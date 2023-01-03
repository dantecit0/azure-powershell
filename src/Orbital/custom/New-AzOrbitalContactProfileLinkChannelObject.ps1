
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create an in-memory object for ContactProfileLinkChannel.
.Description
Create an in-memory object for ContactProfileLinkChannel.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Orbital.Models.Api20220301.ContactProfileLinkChannel
.Link
https://learn.microsoft.com/powershell/module/az.Orbital/new-AzOrbitalContactProfileLinkChannelObject
#>
function New-AzOrbitalContactProfileLinkChannelObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.Orbital.Models.Api20220301.ContactProfileLinkChannel')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(Mandatory, HelpMessage="Bandwidth in MHz.")]
        [float]
        $BandwidthMHz,
        [Parameter(Mandatory, HelpMessage="Center Frequency in MHz.")]
        [float]
        $CenterFrequencyMHz,
        [Parameter(HelpMessage="Configuration for decoding.")]
        [string]
        $DecodingConfiguration,
        [Parameter(HelpMessage="Configuration for demodulation.")]
        [string]
        $DemodulationConfiguration,
        [Parameter(HelpMessage="Configuration for encoding.")]
        [string]
        $EncodingConfiguration,
        [Parameter(Mandatory, HelpMessage="IP Address.")]
        [string]
        $EndPointIPAddress,
        [Parameter(Mandatory, HelpMessage="Name of an end point.")]
        [string]
        $EndPointName,
        [Parameter(Mandatory, HelpMessage="TCP port to listen on to receive data.")]
        [string]
        $EndPointPort,
        [Parameter(Mandatory, HelpMessage="Protocol either UDP or TCP.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Orbital.Support.Protocol])]
        [Microsoft.Azure.PowerShell.Cmdlets.Orbital.Support.Protocol]
        $EndPointProtocol,
        [Parameter(HelpMessage="Configuration for modulation.")]
        [string]
        $ModulationConfiguration,
        [Parameter(Mandatory, HelpMessage="Channel name.")]
        [string]
        $Name
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.Orbital.Models.Api20220301.ContactProfileLinkChannel]::New()

        if ($PSBoundParameters.ContainsKey('BandwidthMHz')) {
            $Object.BandwidthMHz = $BandwidthMHz
        }
        if ($PSBoundParameters.ContainsKey('CenterFrequencyMHz')) {
            $Object.CenterFrequencyMHz = $CenterFrequencyMHz
        }
        if ($PSBoundParameters.ContainsKey('DecodingConfiguration')) {
            $Object.DecodingConfiguration = $DecodingConfiguration
        }
        if ($PSBoundParameters.ContainsKey('DemodulationConfiguration')) {
            $Object.DemodulationConfiguration = $DemodulationConfiguration
        }
        if ($PSBoundParameters.ContainsKey('EncodingConfiguration')) {
            $Object.EncodingConfiguration = $EncodingConfiguration
        }
        if ($PSBoundParameters.ContainsKey('EndPointIPAddress')) {
            $Object.EndPointIPAddress = $EndPointIPAddress
        }
        if ($PSBoundParameters.ContainsKey('EndPointName')) {
            $Object.EndPointName = $EndPointName
        }
        if ($PSBoundParameters.ContainsKey('EndPointPort')) {
            $Object.EndPointPort = $EndPointPort
        }
        if ($PSBoundParameters.ContainsKey('EndPointProtocol')) {
            $Object.EndPointProtocol = $EndPointProtocol
        }
        if ($PSBoundParameters.ContainsKey('ModulationConfiguration')) {
            $Object.ModulationConfiguration = $ModulationConfiguration
        }
        if ($PSBoundParameters.ContainsKey('Name')) {
            $Object.Name = $Name
        }
        return $Object
    }
}

