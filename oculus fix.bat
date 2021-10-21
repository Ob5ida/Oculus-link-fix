@ECHO OFF
:START
WMIC process where name="OVRRedir.exe" CALL setpriority "high priority"
WMIC process where name="OVRServer_x64.exe" CALL setpriority "high priority"
WMIC process where name="OVRServiceLauncher.exe" CALL setpriority "high priority"
WMIC process where name="OculusClient.exe" CALL setpriority "high priority"
WMIC process where name="OculusDash.exe" CALL setpriority "high priority"
TIMEOUT 120
GOTO START