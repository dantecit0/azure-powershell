
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
Creates an instance of a trigger
.Description
Creates an instance of a trigger
.Example
PS C:\> $obj = New-AzPurviewTriggerObject -RecurrenceEndTime '7/20/2022 12:00:00 AM' -RecurrenceStartTime '2/17/2022 1:32:00 PM' -Interval 1 -RecurrenceFrequency 'Month' -ScanLevel 'Full' -ScheduleHour $(9) -ScheduleMinute $(0) -ScheduleMonthDay $(10)
New-AzPurviewTrigger -Endpoint https://parv-brs-2.purview.azure.com/ -DataSourceName 'DataScanTestData-Parv' -ScanName 'Scan-6HK' -Body $obj

CreatedAt                  : 2/17/2022 1:35:12 PM
Id                         : datasources/DataScanTestData-Parv/scans/Scan-6HK/triggers/default
IncrementalScanStartTime   :
Interval                   : 1
LastModifiedAt             : 2/17/2022 1:46:22 PM
LastScheduled              :
Name                       : default
RecurrenceEndTime          : 7/20/2022 12:00:00 AM
RecurrenceFrequency        : Month
RecurrenceInterval         :
RecurrenceStartTime        : 2/17/2022 1:32:00 PM
RecurrenceTimeZone         :
ResourceGroupName          :
ScanLevel                  : Full
ScheduleAdditionalProperty : {
                             }
ScheduleHour               : {9}
ScheduleMinute             : {0}
ScheduleMonthDay           : {10}
ScheduleMonthlyOccurrence  :
ScheduleWeekDay            :

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models.Api20211001Preview.ITrigger
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models.Api20211001Preview.ITrigger
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

BODY <ITrigger>: .
  [IncrementalScanStartTime <DateTime?>]: 
  [Interval <Int32?>]: 
  [RecurrenceEndTime <DateTime?>]: 
  [RecurrenceFrequency <TriggerFrequency?>]: 
  [RecurrenceInterval <String>]: 
  [RecurrenceStartTime <DateTime?>]: 
  [RecurrenceTimeZone <String>]: 
  [ScanLevel <ScanLevelType?>]: 
  [ScheduleAdditionalProperty <IRecurrenceScheduleAdditionalProperties>]: Dictionary of <any>
    [(Any) <Object>]: This indicates any property can be added to this object.
  [ScheduleHour <Int32[]>]: 
  [ScheduleMinute <Int32[]>]: 
  [ScheduleMonthDay <Int32[]>]: 
  [ScheduleMonthlyOccurrence <IRecurrenceScheduleOccurrence[]>]: 
    [AdditionalProperty <IRecurrenceScheduleOccurrenceAdditionalProperties>]: Dictionary of <any>
      [(Any) <Object>]: This indicates any property can be added to this object.
    [Day <DayOfWeek?>]: 
    [Occurrence <Int32?>]: 
  [ScheduleWeekDay <DaysOfWeek[]>]: 
.Link
https://learn.microsoft.com/powershell/module/az.purview/new-azpurviewtrigger
#>
function New-AzPurviewTrigger {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models.Api20211001Preview.ITrigger])]
[CmdletBinding(DefaultParameterSetName='Create', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Uri')]
    [System.String]
    # The scanning endpoint of your purview account.
    # Example: https://{accountName}.purview.azure.com
    ${Endpoint},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Path')]
    [System.String]
    # .
    ${DataSourceName},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Path')]
    [System.String]
    # .
    ${ScanName},

    [Parameter(Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Models.Api20211001Preview.ITrigger]
    # .
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Category('Runtime')]
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
            Create = 'Az.Purviewdata.private\New-AzPurviewTrigger_Create';
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Purviewdata.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
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
