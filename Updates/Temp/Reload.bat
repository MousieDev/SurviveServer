@ECHO OFF
title Survive
color 0f
cls
attrib +h Reload.bat
java -Xmx1G -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=500 -XX:G1HeapRegionSize=16M -jar Survive.jar
attrib -h Reload.bat
del Reload.bat
exit