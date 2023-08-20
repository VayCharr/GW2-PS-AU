$dest = ".."

if (-not (Get-Command -ErrorAction Ignore -Type Cmdlet Start-ThreadJob)) {
    Write-Verbose "Installing module 'ThreadJob' on demand..."
    Install-Module -ErrorAction Stop -Scope CurrentUser ThreadJob
}

$files = @(
    @{
        Uri = "https://www.deltaconnected.com/arcdps/x64/d3d11.dll"
        OutFile = $dest+"/d3d11.dll"
    },
    @{
        Uri = "https://github.com/Krappa322/arcdps_unofficial_extras_releases/releases/latest/download/arcdps_unofficial_extras.dll"
        OutFile = $dest+"/bin64/arcdps_unofficial_extras.dll"
    },
    @{
        Uri = "https://github.com/knoxfighter/arcdps-killproof.me-plugin/releases/latest/download/d3d9_arcdps_killproof_me.dll"
        OutFile = $dest+"/bin64/d3d9_arcdps_killproof_me.dll"
    },
    @{
        Uri = "https://github.com/knoxfighter/GW2-ArcDPS-Boon-Table/releases/latest/download/d3d9_arcdps_table.dll"
        OutFile = $dest+"/bin64/d3d9_arcdps_table.dll"
    },
    @{
        Uri = "https://github.com/Zerthox/arcdps-food-reminder/releases/latest/download/arcdps_food_reminder.dll"
        OutFile = $dest+"/bin64/arcdps_food_reminder.dll"
    },
    @{
        Uri = "https://github.com/typedeck0/Know-thy-enemy/releases/latest/download/know-thy-enemy.dll"
        OutFile = $dest+"/bin64/know-thy-enemy.dll"
    }
)

$jobs = @()

foreach ($file in $files) {
    $jobs += Start-ThreadJob -Name $file.OutFile -ScriptBlock {
        $params = $using:file
        Invoke-WebRequest @params
    }
}

Write-Host "Downloads started.."
Wait-Job -Job $jobs

foreach ($job in $jobs) {
    Receive-Job -Job $job
}