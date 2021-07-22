#!/bin/bash
PSES_BUNDLE_PATH='/home/jonflatt/source/PowerShellEditorServices/module/PowerShellEditorServices'
SESSION_TEMP_PATH='/home/jonflatt/.sessionTemp'

pwsh -NoLogo -NoProfile -Command "$PSES_BUNDLE_PATH/Start-EditorServices.ps1 -BundledModulesPath $PSES_BUNDLE_PATH -LogPath $SESSION_TEMP_PATH/logs.log -SessionDetailsPath $SESSION_TEMP_PATH/session.json -FeatureFlags @() -AdditionalModules @() -HostName 'My Client' -HostProfileId 'myclient' -HostVersion 1.0.0 -Stdio -LogLevel Normal"
