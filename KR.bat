adb kill-server
adb start-server
adb push libinvinsible.so /data/data/com.pubg.krmobile/lib/libinvinsible.so
adb push libanortTW.so /data/data/com.pubg.krmobile/lib/libanort.so
adb push libCrashSight.so /data/data/com.pubg.krmobile/lib/libCrashSight.so
adb push libGVoicePlugin.so /data/data/com.pubg.krmobile/lib/libGVoicePlugin.so
adb.exe -s emulator-5554 shell rm -rf /data/data/com.pubg.krmobile/databases
adb.exe -s emulator-5554 shell am start -n com.pubg.krmobile/com.epicgames.ue4.SplashActivity
