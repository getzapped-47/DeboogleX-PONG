:: SPDX-FileCopyrightText: @getzapped

@echo off
echo =============================================
echo         DEBOOGLEX by ZAP        
echo      Optimize Your Nothing Phone 2         
echo          @getzapped on TG                      
echo =============================================
echo.
echo Uninstalling selected Google Apps, Useless Services and Useless Overlays for user 0...
echo.
echo ## WARNING ## : This will remove unnecessary apps and services.
echo    "Ok Google" and Google's AR features will no longer work.
echo    Install an alternative SMS app via browser or F-Droid if needed.
echo.
set /p choice="Do you want to continue? (Y/N): "

if /I "%choice%"=="Y" (
    echo Proceeding with debloat...
    
    :: Uninstall Google apps
    adb shell pm uninstall --user 0 com.android.chrome
    adb shell pm uninstall --user 0 com.google.android.apps.docs
    adb shell pm uninstall --user 0 com.google.android.apps.meetings
    adb shell pm uninstall --user 0 com.google.android.apps.magazines
    adb shell pm uninstall --user 0 com.google.android.apps.podcasts
    adb shell pm uninstall --user 0 com.google.android.videos
    adb shell pm uninstall --user 0 com.google.android.apps.subscriptions.red
    adb shell pm uninstall --user 0 com.google.android.apps.walletnfcrel
    adb shell pm uninstall --user 0 com.google.android.keep
    adb shell pm uninstall --user 0 com.google.android.apps.assistant
    adb shell pm uninstall --user 0 com.google.ar.lens
    adb shell pm uninstall --user 0 com.google.android.apps.tips
    adb shell pm uninstall --user 0 com.google.android.apps.wellbeing
    adb shell pm uninstall --user 0 com.google.android.apps.safetyhub
    adb shell pm uninstall --user 0 com.google.android.dialer
    adb shell pm uninstall --user 0 com.google.android.apps.messaging

    :: Uninstall system, overlay packages, and useless things
    adb shell pm uninstall --user 0 com.android.bluetoothmidiservice
    adb shell pm uninstall --user 0 com.android.cellbroadcastreceiver.overlay.common
    adb shell pm uninstall --user 0 com.android.hotwordenrollment.okgoogle
    adb shell pm uninstall --user 0 com.android.hotwordenrollment.xgoogle
    adb shell pm uninstall --user 0 com.android.providers.partnerbookmarks
    adb shell pm uninstall --user 0 com.android.rkpdapp
    adb shell pm uninstall --user 0 com.android.settings.overlay.personalsafety
    adb shell pm uninstall --user 0 com.android.systemui.overlay.common
    adb shell pm uninstall --user 0 com.android.systemui.overlay.gms
    adb shell pm uninstall --user 0 com.android.traceur
    adb shell pm uninstall --user 0 com.google.ambient.streaming
    adb shell pm uninstall --user 0 com.google.android.apps.healthdata
    adb shell pm uninstall --user 0 com.google.android.apps.safetyhub
    adb shell pm uninstall --user 0 com.google.android.apps.tachyon
    adb shell pm uninstall --user 0 com.google.android.as.oss
    adb shell pm uninstall --user 0 com.google.android.federatedcompute
    adb shell pm uninstall --user 0 com.google.android.feedback
    adb shell pm uninstall --user 0 com.google.android.gms.location.history
    adb shell pm uninstall --user 0 com.google.android.odad
    adb shell pm uninstall --user 0 com.google.android.overlay.gmsconfig.healthconnect
    adb shell pm uninstall --user 0 com.google.android.overlay.gmsconfig.tetheringentitlement
    adb shell pm uninstall --user 0 com.google.android.overlay.modules.captiveportallogin.forframework
    adb shell pm uninstall --user 0 com.google.android.safetycenter.resources
    adb shell pm uninstall --user 0 com.google.android.tag
    adb shell pm uninstall --user 0 com.google.ar.core
    adb shell pm uninstall --user 0 com.google.mainline.adservices
    adb shell pm uninstall --user 0 com.nothing.agreement
    adb shell pm uninstall --user 0 com.nothing.experience
    adb shell pm uninstall --user 0 com.nothing.smartcenter
    adb shell pm uninstall --user 0 com.nothing.weather
    adb shell pm uninstall --user 0 com.nt.android.overlay.gmsconfig.safetycenter
    adb shell pm uninstall --user 0 com.nt.android.overlay.gmsconfig.settings
    adb shell pm uninstall --user 0 com.nt.android.overlay.gmsconfig.settingsprovider
    adb shell pm uninstall --user 0 com.qti.dcf
    adb shell pm uninstall --user 0 com.qti.qcc
    adb shell pm uninstall --user 0 com.qti.service.colorservice
    adb shell pm uninstall --user 0 com.qualcomm.atfwd
    adb shell pm uninstall --user 0 com.qualcomm.atfwd2
    adb shell pm uninstall --user 0 com.qualcomm.qti.qms.service.connectionsecurity
    adb shell pm uninstall --user 0 com.qualcomm.qti.remoteSimlockAuth
    adb shell pm uninstall --user 0 com.qualcomm.qti.ridemodeaudio
    adb shell pm uninstall --user 0 com.qualcomm.qti.server.wigig.tethering.rro
    adb shell pm uninstall --user 0 com.qualcomm.qtil.aptxacu
    adb shell pm uninstall --user 0 com.qualcomm.qtil.aptxalsOverlay
    adb shell pm uninstall --user 0 com.qualcomm.qtil.aptxui

    echo.
    echo  \/ Done! Some packages may return "not installed" if they were already removed.
    echo  \/ Warning: "Ok Google" and AR services will no longer work.
    echo  \/ Install an alternative SMS app via browser or F-Droid ex : QUIK SMS, Fossify Messages, etc.
) else (
    echo Operation canceled. No changes were made.
)

echo.
echo Press ENTER to exit...
pause >nul
