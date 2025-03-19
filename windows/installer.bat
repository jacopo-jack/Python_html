@echo off
title python_installer
:: funziona solo se c'è installato python
echo installazione senza UI
echo python help per parametri 
python-3.13.2.exe %1
goto env
::env = variabili d'ambiente
call env.bat
