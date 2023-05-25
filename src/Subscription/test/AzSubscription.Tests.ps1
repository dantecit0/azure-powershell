if (($null -eq $TestName) -or ($TestName -contains 'AzSubscription')) {
    $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
    if (-Not (Test-Path -Path $loadEnvPath)) {
        $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
    }
    . ($loadEnvPath)
    $TestRecordingFile = Join-Path $PSScriptRoot 'AzSubscription.Recording.json'
    $currentPath = $PSScriptRoot
    while (-not $mockingPath) {
        $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
        $currentPath = Split-Path -Path $currentPath -Parent
    }
    . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'AzSubscription' {
    It 'CreateAliasExpanded' {
        {
            $config = New-AzSubscriptionAlias -AliasName $env.testSubName
            $config.Name | Should -Be $env.testSubName
        } | Should -Not -Throw
    }

    It 'ListAlias' {
        {
            $config = Get-AzSubscriptionAlias -AliasName $env.testSubName
            $config.Name | Should -Be $env.testSubName
        } | Should -Not -Throw
    }

    It 'GetPolicy' {
        {
            $config = Get-AzSubscriptionPolicy
            $config.Count | Should -BeGreaterThan 0
        } | Should -Not -Throw
    }

    It 'AcceptExpandedOwnershipStatus' {
        {
            $config = Get-AzSubscriptionAcceptOwnershipStatus
            $config.Count | Should -BeGreaterThan 0
        } | Should -Not -Throw
    }

    It 'UpdateSubPolicy' {
        {
            $config = Update-AzSubscriptionPolicy -BlockSubscriptionsIntoTenant:$true -BlockSubscriptionsLeavingTenant:$false -ExemptedPrincipal XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
            $config.Count | Should -BeGreaterThan 0
        } | Should -Not -Throw
    }

    It 'RenameSub' {
        {
            $config = Rename-AzSubscription -Id $env.SubscriptionId -SubscriptionName "test-subscription"
            $config.Count | Should -BeGreaterThan 0
        } | Should -Not -Throw
    }

    It 'DeleteAlias' {
        {
            Remove-AzSubscriptionAlias -AliasName $env.testSubName
        } | Should -Not -Throw
    }
}
