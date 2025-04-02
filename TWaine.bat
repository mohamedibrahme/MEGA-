adb kill-server
adb start-server
//adb push libinvinsible.so /data/data/com.rekoo.pubgm/lib/libinvinsible.so
adb push libanortTW.so /data/data/com.rekoo.pubgm/lib/libanort.so
adb push libCrashSight.so /data/data/com.rekoo.pubgm/lib/libCrashSight.so
//adb push libGVoicePlugin.so /data/data/com.rekoo.pubgm/lib/libGVoicePlugin.so
adb.exe -s emulator-5554 shell rm -rf /data/data/com.rekoo.pubgm/databases
adb.exe -s emulator-5554 shell am start -n com.rekoo.pubgm/com.epicgames.ue4.SplashActivity
