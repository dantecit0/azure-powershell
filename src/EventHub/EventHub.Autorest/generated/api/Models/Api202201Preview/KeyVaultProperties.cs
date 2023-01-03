// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview
{
    using static Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.Extensions;

    /// <summary>Properties to configure keyVault Properties</summary>
    [Microsoft.Azure.PowerShell.Cmdlets.EventHub.DoNotFormat]
    public partial class KeyVaultProperties :
        Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IKeyVaultProperties,
        Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IKeyVaultPropertiesInternal
    {

        /// <summary>Backing field for <see cref="Identity" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IUserAssignedIdentityProperties _identity;

        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Origin(Microsoft.Azure.PowerShell.Cmdlets.EventHub.PropertyOrigin.Owned)]
        internal Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IUserAssignedIdentityProperties Identity { get => (this._identity = this._identity ?? new Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.UserAssignedIdentityProperties()); set => this._identity = value; }

        /// <summary>Backing field for <see cref="KeyName" /> property.</summary>
        private string _keyName;

        /// <summary>Name of the Key from KeyVault</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Origin(Microsoft.Azure.PowerShell.Cmdlets.EventHub.PropertyOrigin.Owned)]
        public string KeyName { get => this._keyName; set => this._keyName = value; }

        /// <summary>Backing field for <see cref="KeyVaultUri" /> property.</summary>
        private string _keyVaultUri;

        /// <summary>Uri of KeyVault</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Origin(Microsoft.Azure.PowerShell.Cmdlets.EventHub.PropertyOrigin.Owned)]
        public string KeyVaultUri { get => this._keyVaultUri; set => this._keyVaultUri = value; }

        /// <summary>Backing field for <see cref="KeyVersion" /> property.</summary>
        private string _keyVersion;

        /// <summary>Key Version</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Origin(Microsoft.Azure.PowerShell.Cmdlets.EventHub.PropertyOrigin.Owned)]
        public string KeyVersion { get => this._keyVersion; set => this._keyVersion = value; }

        /// <summary>Internal Acessors for Identity</summary>
        Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IUserAssignedIdentityProperties Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IKeyVaultPropertiesInternal.Identity { get => (this._identity = this._identity ?? new Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.UserAssignedIdentityProperties()); set { {_identity = value;} } }

        /// <summary>ARM ID of user Identity selected for encryption</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Origin(Microsoft.Azure.PowerShell.Cmdlets.EventHub.PropertyOrigin.Inlined)]
        public string UserAssignedIdentity { get => ((Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IUserAssignedIdentityPropertiesInternal)Identity).UserAssignedIdentity; set => ((Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IUserAssignedIdentityPropertiesInternal)Identity).UserAssignedIdentity = value ?? null; }

        /// <summary>Creates an new <see cref="KeyVaultProperties" /> instance.</summary>
        public KeyVaultProperties()
        {

        }
    }
    /// Properties to configure keyVault Properties
    public partial interface IKeyVaultProperties :
        Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.IJsonSerializable
    {
        /// <summary>Name of the Key from KeyVault</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Name of the Key from KeyVault",
        SerializedName = @"keyName",
        PossibleTypes = new [] { typeof(string) })]
        string KeyName { get; set; }
        /// <summary>Uri of KeyVault</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Uri of KeyVault",
        SerializedName = @"keyVaultUri",
        PossibleTypes = new [] { typeof(string) })]
        string KeyVaultUri { get; set; }
        /// <summary>Key Version</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Key Version",
        SerializedName = @"keyVersion",
        PossibleTypes = new [] { typeof(string) })]
        string KeyVersion { get; set; }
        /// <summary>ARM ID of user Identity selected for encryption</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.EventHub.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"ARM ID of user Identity selected for encryption",
        SerializedName = @"userAssignedIdentity",
        PossibleTypes = new [] { typeof(string) })]
        string UserAssignedIdentity { get; set; }

    }
    /// Properties to configure keyVault Properties
    internal partial interface IKeyVaultPropertiesInternal

    {
        Microsoft.Azure.PowerShell.Cmdlets.EventHub.Models.Api202201Preview.IUserAssignedIdentityProperties Identity { get; set; }
        /// <summary>Name of the Key from KeyVault</summary>
        string KeyName { get; set; }
        /// <summary>Uri of KeyVault</summary>
        string KeyVaultUri { get; set; }
        /// <summary>Key Version</summary>
        string KeyVersion { get; set; }
        /// <summary>ARM ID of user Identity selected for encryption</summary>
        string UserAssignedIdentity { get; set; }

    }
}