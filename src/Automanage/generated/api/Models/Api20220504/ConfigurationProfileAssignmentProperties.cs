// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.Automanage.Models.Api20220504
{
    using static Microsoft.Azure.PowerShell.Cmdlets.Automanage.Runtime.Extensions;

    /// <summary>Automanage configuration profile assignment properties.</summary>
    public partial class ConfigurationProfileAssignmentProperties :
        Microsoft.Azure.PowerShell.Cmdlets.Automanage.Models.Api20220504.IConfigurationProfileAssignmentProperties,
        Microsoft.Azure.PowerShell.Cmdlets.Automanage.Models.Api20220504.IConfigurationProfileAssignmentPropertiesInternal
    {

        /// <summary>Backing field for <see cref="ConfigurationProfile" /> property.</summary>
        private string _configurationProfile;

        /// <summary>The Automanage configurationProfile ARM Resource URI.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Automanage.Origin(Microsoft.Azure.PowerShell.Cmdlets.Automanage.PropertyOrigin.Owned)]
        public string ConfigurationProfile { get => this._configurationProfile; set => this._configurationProfile = value; }

        /// <summary>Internal Acessors for Status</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Automanage.Models.Api20220504.IConfigurationProfileAssignmentPropertiesInternal.Status { get => this._status; set { {_status = value;} } }

        /// <summary>Internal Acessors for TargetId</summary>
        string Microsoft.Azure.PowerShell.Cmdlets.Automanage.Models.Api20220504.IConfigurationProfileAssignmentPropertiesInternal.TargetId { get => this._targetId; set { {_targetId = value;} } }

        /// <summary>Backing field for <see cref="Status" /> property.</summary>
        private string _status;

        /// <summary>The status of onboarding, which only appears in the response.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Automanage.Origin(Microsoft.Azure.PowerShell.Cmdlets.Automanage.PropertyOrigin.Owned)]
        public string Status { get => this._status; }

        /// <summary>Backing field for <see cref="TargetId" /> property.</summary>
        private string _targetId;

        /// <summary>The target VM resource URI</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Automanage.Origin(Microsoft.Azure.PowerShell.Cmdlets.Automanage.PropertyOrigin.Owned)]
        public string TargetId { get => this._targetId; }

        /// <summary>
        /// Creates an new <see cref="ConfigurationProfileAssignmentProperties" /> instance.
        /// </summary>
        public ConfigurationProfileAssignmentProperties()
        {

        }
    }
    /// Automanage configuration profile assignment properties.
    public partial interface IConfigurationProfileAssignmentProperties :
        Microsoft.Azure.PowerShell.Cmdlets.Automanage.Runtime.IJsonSerializable
    {
        /// <summary>The Automanage configurationProfile ARM Resource URI.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Automanage.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The Automanage configurationProfile ARM Resource URI.",
        SerializedName = @"configurationProfile",
        PossibleTypes = new [] { typeof(string) })]
        string ConfigurationProfile { get; set; }
        /// <summary>The status of onboarding, which only appears in the response.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Automanage.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"The status of onboarding, which only appears in the response.",
        SerializedName = @"status",
        PossibleTypes = new [] { typeof(string) })]
        string Status { get;  }
        /// <summary>The target VM resource URI</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.Automanage.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"The target VM resource URI",
        SerializedName = @"targetId",
        PossibleTypes = new [] { typeof(string) })]
        string TargetId { get;  }

    }
    /// Automanage configuration profile assignment properties.
    internal partial interface IConfigurationProfileAssignmentPropertiesInternal

    {
        /// <summary>The Automanage configurationProfile ARM Resource URI.</summary>
        string ConfigurationProfile { get; set; }
        /// <summary>The status of onboarding, which only appears in the response.</summary>
        string Status { get; set; }
        /// <summary>The target VM resource URI</summary>
        string TargetId { get; set; }

    }
}