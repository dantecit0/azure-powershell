
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
Create an in-memory object for DeliveryRuleCacheKeyQueryStringAction.
.Description
Create an in-memory object for DeliveryRuleCacheKeyQueryStringAction.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20221101Preview.DeliveryRuleCacheKeyQueryStringAction
.Link
https://learn.microsoft.com/powershell/module/Az.Cdn/new-AzCdnDeliveryRuleCacheKeyQueryStringActionObject
#>
function New-AzCdnDeliveryRuleCacheKeyQueryStringActionObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20221101Preview.DeliveryRuleCacheKeyQueryStringAction')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="query parameters to include or exclude (comma separated).")]
        [string]
        $ParameterQueryParameter,
        [Parameter(Mandatory, HelpMessage="Caching behavior for the requests.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.QueryStringBehavior])]
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.QueryStringBehavior]
        $ParameterQueryStringBehavior,
        [Parameter(Mandatory, HelpMessage="The name of the action for the delivery rule.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.DeliveryRuleAction])]
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.DeliveryRuleAction]
        $Name
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20221101Preview.DeliveryRuleCacheKeyQueryStringAction]::New()

        if ($PSBoundParameters.ContainsKey('ParameterQueryParameter')) {
            $Object.ParameterQueryParameter = $ParameterQueryParameter
        }
        if ($PSBoundParameters.ContainsKey('ParameterQueryStringBehavior')) {
            $Object.ParameterQueryStringBehavior = $ParameterQueryStringBehavior
        }
        if ($PSBoundParameters.ContainsKey('Name')) {
            $Object.Name = $Name
        }
        return $Object
    }
}

