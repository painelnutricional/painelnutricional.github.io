@echo off
chcp 65001 > nul
echo ========================================================
echo    Iniciando o Painel Nutricional - Nucleo Vida
echo ========================================================
echo.
echo Abrindo o painel no seu navegador padrao...
start "" "%~dp0index.html"
exit
