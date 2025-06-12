@echo off
echo =====================================
echo FLUSHING DNS & RESETTING NETWORK
echo =====================================
ipconfig /flushdns
netsh winsock reset
netsh int ip reset
pause
