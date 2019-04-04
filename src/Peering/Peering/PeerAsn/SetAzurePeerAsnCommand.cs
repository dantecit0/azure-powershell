﻿// --------------------------------------------------------------------------------------------------------------------
// <copyright company="Microsoft" file="SetAzurePeerAsnCommand.cs">
//   Licensed under the Apache License, Version 2.0 (the "License");
//   //   you may not use this file except in compliance with the License.
//   //   You may obtain a copy of the License at
//   //   http://www.apache.org/licenses/LICENSE-2.0
//   //   Unless required by applicable law or agreed to in writing, software
//   //   distributed under the License is distributed on an "AS IS" BASIS,
//   //   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   //   See the License for the specific language governing permissions and
//   //   limitations under the License.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace Microsoft.Azure.PowerShell.Cmdlets.Peering.PeerAsn
{
    using System;
    using System.Management.Automation;
    using System.Net.Http;

    using Microsoft.Azure.Management.Peering;
    using Microsoft.Azure.Management.Peering.Models;
    using Microsoft.Azure.PowerShell.Cmdlets.Peering.Common;
    using Microsoft.Azure.PowerShell.Cmdlets.Peering.Models;

    /// <summary>
    ///     New Azure InputObject Command-let
    /// </summary>
    [Cmdlet(
        VerbsCommon.Set,
        "AzPeerAsn", DefaultParameterSetName = Constants.ParameterSetNameUpdateEmail, SupportsShouldProcess = true)]
    [OutputType(typeof(PSPeerAsn))]
    public class SetAzurePeerAsn : PeeringBaseCmdlet
    {
        /// <summary>
        /// Gets or sets the legacy InputObject.
        /// </summary>
        [Parameter(
            Position = Constants.PositionPeeringZero,
            Mandatory = true,
            ValueFromPipeline = true,
            HelpMessage = Constants.PeerAsnHelp,
            ParameterSetName = Constants.ParameterSetNameUpdateEmail,
            DontShow = true),
         Parameter(
             Position = Constants.PositionPeeringZero,
             Mandatory = true,
             HelpMessage = Constants.PeerAsnHelp,
             ValueFromPipeline = true,
             ParameterSetName = Constants.ParameterSetNameUpdatePhone,
             DontShow = true)]
        public PSPeerAsn InputObject { get; set; }

        /// <summary>
        ///     Gets or sets the Email
        /// </summary>
        [Parameter(
            Mandatory = true,
            HelpMessage = Constants.EmailsHelp,
            ParameterSetName = Constants.ParameterSetNameUpdateEmail)]
        [ValidateNotNullOrEmpty]
        public virtual string[] Email { get; set; }

        [Parameter(
            Mandatory = true,
            HelpMessage = Constants.PhoneHelp,
            ParameterSetName = Constants.ParameterSetNameUpdatePhone)]
        [ValidateNotNullOrEmpty]
        public virtual string[] Phone { get; set; }

        /// <summary>
        ///     The AsJob parameter to run in the background.
        /// </summary>
        [Parameter(Mandatory = false, HelpMessage = Constants.AsJobHelp)]
        public SwitchParameter AsJob { get; set; }

        /// <summary>
        ///     The inherited Execute function.
        /// </summary>
        public override void Execute()
        {
            try
            {
                base.Execute();
                this.WriteObject(this.UpdatePeerContactInfo());
            }
            catch (InvalidOperationException mapException)
            {
                throw new InvalidOperationException($"Failed to map object {mapException}");
            }
            catch (ErrorResponseException ex)
            {
                throw new ErrorResponseException($"Error:{ex.Response.ReasonPhrase} reason:{ex.Body.Code} message:{ex.Body.Message}");
            }
        }

        /// <summary>
        /// The update peer contact info.
        /// </summary>
        /// <returns>
        /// The <see cref="object"/>.
        /// </returns>
        private object UpdatePeerContactInfo()
        {
            // Get old and verify its the same
            var oldPeerAsn = this.PeeringManagementClient.PeerAsns.Get(this.InputObject.Name);
            if (oldPeerAsn.PeerName == this.InputObject.Name
                && oldPeerAsn.PeerAsnProperty == this.InputObject.PeerAsnProperty)
            {
                var update = this.InputObject;
                if (this.Email != null)
                {
                    foreach (var email in this.Email)
                    {
                        update.PeerContactInfo.Emails.Add(email);
                    }
                }

                if (this.Phone == null)
                    return this.PeeringManagementClient.PeerAsns.CreateOrUpdate(
                        oldPeerAsn.PeerName,
                        this.ToPeeringAsn(update));
                foreach (var s in this.Phone)
                {
                    update.PeerContactInfo.Phone.Add(s);
                }

                return this.PeeringManagementClient.PeerAsns.CreateOrUpdate(
                    oldPeerAsn.PeerName,
                    this.ToPeeringAsn(update));
            }

            throw new Exception($"Only contact information can be changed");
        }
    }
}
