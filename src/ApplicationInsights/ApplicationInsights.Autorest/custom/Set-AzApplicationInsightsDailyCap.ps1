
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
Update current billing features for an Application Insights component.
.Description
Update current billing features for an Application Insights component.
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.Api20150501.IApplicationInsightsComponentBillingFeatures
.Link
https://docs.microsoft.com/powershell/module/az.applicationinsights/set-azapplicationinsightsdailycap
#>
function Set-AzApplicationInsightsDailyCap {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Models.Api20150501.IApplicationInsightsComponentBillingFeatures])]
    [CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Path')]
        [System.String]
        # The name of the resource group.
        # The name is case insensitive.
        ${ResourceGroupName},
    
        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Path')]
        [Alias("ApplicationInsightsComponentName", "ComponentName")]
        [System.String]
        # The name of the Application Insights component resource.
        ${Name},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [System.String]
        # The ID of the target subscription.
        ${SubscriptionId},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Body')]
        [System.Double]
        # Daily data volume cap in GB.
        ${DailyCapGB},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Body')]
        [System.Management.Automation.SwitchParameter]
        # Stop send notification when hit cap.
        ${DisableNotificationWhenHitCap},
    
        [Parameter()]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.ApplicationInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )
    
    process {
        $PSBoundParameters['ResourceName'] = $PSBoundParameters['Name']
        $null = $PSBoundParameters.Remove('Name')
        $feature = (. Az.ApplicationInsights.internal\Get-AzApplicationInsightsComponentCurrentBillingFeature -ResourceGroupName $PSBoundParameters['ResourceGroupName'] -SubscriptionId $PSBoundParameters['SubscriptionId'] -ResourceName $PSBoundParameters['ResourceName'])
        if ($PSBoundParameters['DailyCapGB']) {
            $PSBoundParameters['DataVolumeCap'] = $PSBoundParameters['DailyCapGB']
            $null = $PSBoundParameters.Remove('DailyCapGB')
        }
        if ($PSBoundParameters.ContainsKey('DisableNotificationWhenHitCap')) {
            $PSBoundParameters['DataVolumeCapStopSendNotificationWhenHitCap'] = $PSBoundParameters['DisableNotificationWhenHitCap']
            $PSBoundParameters.Remove('DisableNotificationWhenHitCap')
        } else {
            $PSBoundParameters['DataVolumeCapStopSendNotificationWhenHitCap'] = $false
        }

        $PSBoundParameters['DataVolumeCapStopSendNotificationWhenHitThreshold'] = $feature.DataVolumeCapStopSendNotificationWhenHitThreshold
        $PSBoundParameters['DataVolumeCapWarningThreshold'] = $feature.DataVolumeCapWarningThreshold
        $PSBoundParameters['CurrentBillingFeature'] = $feature.CurrentBillingFeature

        . Az.ApplicationInsights.internal\Set-AzApplicationInsightsComponentCurrentBillingFeature @PSBoundParameters
    }
}
    