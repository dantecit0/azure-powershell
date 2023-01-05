
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
Get the quota request details and status by quota request ID for the resources of the resource provider at a specific location.
The quota request ID **id** is returned in the response of the PUT operation.
.Description
Get the quota request details and status by quota request ID for the resources of the resource provider at a specific location.
The quota request ID **id** is returned in the response of the PUT operation.
.Example
PS C:\> Get-AzQuotaRequestStatus -Scope "subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/providers/Microsoft.Network/locations/eastus"

Name                                 ProvisioningState ErrorMessage    Code
----                                 ----------------- ------------    ----
171f4e10-f396-48bc-a93f-245cfd7ebe75 Succeeded
0f5636d8-9377-4aec-9a57-5cdeded08615 Succeeded
3ae1cf1d-c792-448f-b2ff-33334ea1a28b Succeeded
5698cdd1-6b4b-4ec1-9a39-a4b5963094dd Succeeded
fb507eaa-f45f-476d-a1a5-77c74b1224b2 Succeeded
22f8a9f1-a003-42a0-9892-474a0478ceea Succeeded
103e114c-3894-4b33-a673-b3d814eea753 Succeeded
9decdd61-be39-4815-96d7-dfad78674940 Succeeded
3a4c474e-cfb1-4af6-baff-0f0bfea67b61 Succeeded
.Example
PS C:\> Get-AzQuotaRequestStatus -Scope "subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/providers/Microsoft.Network/locations/eastus" -Id "6cf5716a-3df8-421a-8457-719e10381dbc"

Name                                 ProvisioningState ErrorMessage    Code
----                                 ----------------- ------------    ----
6cf5716a-3df8-421a-8457-719e10381dbc Failed            Request failed. QuotaReductionNotSupported

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Quota.Models.Api20210315Preview.IQuotaRequestDetails
.Link
https://learn.microsoft.com/powershell/module/az.quota/get-azquotarequeststatus
#>
function Get-AzQuotaRequestStatus {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Quota.Models.Api20210315Preview.IQuotaRequestDetails])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Path')]
    [System.String]
    # The target Azure resource URI.
    # For example, `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/qms-test/providers/Microsoft.Batch/batchAccounts/testAccount/`.
    # This is the target Azure resource URI for the List GET operation.
    # If a `{resourceName}` is added after `/quotas`, then it's the target Azure resource URI in the GET operation for the specific resource.
    ${Scope},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Path')]
    [System.String]
    # Quota request ID.
    ${Id},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Query')]
    [System.String]
    # | Field | Supported operators 
    # |---------------------|------------------------
    # 
    # |requestSubmitTime | ge, le, eq, gt, lt
    #  |provisioningState eq {QuotaRequestState}
    #  |resourceName eq {resourceName}
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Query')]
    [System.String]
    # The **Skiptoken** parameter is used only if a previous operation returned a partial result.
    # If a previous response contains a **nextLink** element, its value includes a **skiptoken** parameter that specifies a starting point to use for subsequent calls.
    ${Skiptoken},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Query')]
    [System.Int32]
    # Number of records to return.
    ${Top},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Quota.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Az.Quota.private\Get-AzQuotaRequestStatus_Get';
            List = 'Az.Quota.private\Get-AzQuotaRequestStatus_List';
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Quota.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}
