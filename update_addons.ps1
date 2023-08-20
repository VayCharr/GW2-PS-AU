Invoke-WebRequest https://www.deltaconnected.com/arcdps/x64/d3d11.dll -OutFile d3d11.dll
Invoke-WebRequest https://github.com/Krappa322/arcdps_unofficial_extras_releases/releases/latest/download/arcdps_unofficial_extras.dll -OutFile $PSScriptRoot/bin64/arcdps_unofficial_extras.dll
Invoke-WebRequest https://github.com/knoxfighter/arcdps-killproof.me-plugin/releases/latest/download/d3d9_arcdps_killproof_me.dll -OutFile $PSScriptRoot/bin64/d3d9_arcdps_killproof_me.dll
Invoke-WebRequest https://github.com/knoxfighter/GW2-ArcDPS-Boon-Table/releases/latest/download/d3d9_arcdps_table.dll -OutFile $PSScriptRoot/bin64/d3d9_arcdps_table.dll
Invoke-WebRequest https://github.com/Zerthox/arcdps-food-reminder/releases/latest/download/arcdps_food_reminder.dll -OutFile $PSScriptRoot/bin64/arcdps_food_reminder.dll
Invoke-WebRequest https://github.com/typedeck0/Know-thy-enemy/releases/latest/download/know-thy-enemy.dll -OutFile $PSScriptRoot/bin64/know-thy-enemy.dll