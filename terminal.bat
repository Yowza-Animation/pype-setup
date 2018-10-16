REM @echo off
set PYPE_DEBUG=1
set PYPE_SETUP_GIT_URL=git@github.com:pypeclub/pype-setup.git
set PYPE_SETUP_GIT_BRANCH=app-lib-all-jakub

set PYPE_SETUP_ROOT=%~dp0

:: maintain python environment
set SYNC_ENV=0 :: will synchronize remote with local
set REMOTE_ENV_ON=0 :: will switch to remote
call %PYPE_SETUP_ROOT%bin\launch_conda.bat

:: set pythonpath for adding app into python context
set PYTHONPATH=%PYPE_SETUP_ROOT%

:: set path to this environment
set PATH=%PYPE_SETUP_ROOT%app;%PATH%

:: todo: will need to add avalon core into pythonpath
start "Pype Terminal" cmd
pause
