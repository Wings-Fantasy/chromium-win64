@echo off

IF NOT DEFINED IN_CHROMIUM_BUILDER (goto :EOF)
cd %CHROMIUM_DIR%\depot_tools

cd chromium\src
cmd /c "gn gen out\stable-windows-amd64"
cmd /c "autoninja -C out/stable-windows-amd64 mini_installer"
cd ..\..