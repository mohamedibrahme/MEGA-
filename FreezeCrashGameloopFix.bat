@echo off
title @RealXenomania
color 03
(Set LF=^
%Null%
)
SetLocal EnableExtensions EnableDelayedExpansion
set "string=abcdefghijklmnopqrstuvwxyz0123456789"
set PackageName=com.tencent.ig
REM set PackageName=com.pubg.krmobile
REM set PackageName=com.vng.pubgmobile
REM set PackageName=com.rekoo.pubgm
echo Starting
adb kill-server
adb start-server

adb shell rm -rf /data/data/%PackageName%/databases
adb shell rm -rf /data/data/%PackageName%/code_cache
adb shell rm -rf /data/data/%PackageName%/cache
adb shell rm -rf /data/data/%PackageName%/app_webview
adb shell rm -rf /data/data/%PackageName%/app_textures
adb shell rm -rf /data/data/%PackageName%/app_crashSight
adb shell rm -rf /data/data/%PackageName%/app_crashrecord
adb shell rm -rf /data/data/%PackageName%/no_backup
adb shell rm -rf /data/data/%PackageName%/shared_prefs
adb shell rm -rf /data/data/%PackageName%/files
adb shell rm -rf /sdcard/Android/data/%PackageName%/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs


adb shell am start -n %PackageName%/com.epicgames.ue4.SplashActivity
adb shell am start -n com.android.settings/.Settings
timeout /t 15 /nobreak >nul
adb shell input keyevent KEYCODE_BACK
echo Done!