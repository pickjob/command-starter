SETLOCAL enabledelayedexpansion

SET Path=C:\WINDOWS\system32;C:\WINDOWS;

SET PACKAGE_HOME=%REPOSITORY%\packages

@REM msys2
SET MSYS2_HOME=%REPOSITORY%\development\msys64
COPY /Y .\config\clang64.ini %MSYS2_HOME%\clang64.ini
COPY /Y .\config\zshenv %MSYS2_HOME%\home\%USERNAME%\.zshenv
COPY /Y .\config\minttyrc %MSYS2_HOME%\home\%USERNAME%\.minttyrc
COPY /Y .\config\gitconfig %MSYS2_HOME%\home\%USERNAME%\.gitconfig
ECHO. > %MSYS2_HOME%\home\%USERNAME%\.zshrc
MKDIR %MSYS2_HOME%\home\%USERNAME%\.zsh
ROBOCOPY .\config\zsh %MSYS2_HOME%\home\%USERNAME%\.zsh /S /XO /V
MKDIR %PACKAGE_HOME%\zsh-win
ROBOCOPY .\config\zsh-plugin %PACKAGE_HOME%\zsh-win /S /XO /V
MKDIR %MSYS2_HOME%\home\%USERNAME%\.ssh
ROBOCOPY .\ssh %MSYS2_HOME%\home\%USERNAME%\.ssh /S /XO /V
SET Path=%MSYS2_HOME%\clang64\bin;%MSYS2_HOME%\usr\bin;%Path%

@REM other tools
SET Path=%REPOSITORY%\bin;%Path%
@REM git
COPY /Y .\config\gitconfig %USERPROFILE%\.gitconfig
SET Path=%REPOSITORY%\development\git-win-2.47\bin;%Path%
@REM svn
SET Path=%REPOSITORY%\development\subversion-win-1.14\bin;%Path%
@REM psql
SET Path=%REPOSITORY%\development\postgresql-win-17.2\bin;%Path%

@REM lsd
MKDIR %APPDATA%\lsd
COPY /Y .\config\lsd.yaml %APPDATA%\lsd\config.yaml
@REM bat
COPY /Y .\config\bat.conf %REPOSITORY%\bat.conf
@REM wsl
COPY /Y .\config\wslconfig %UserProfile%\.wslconfig

@REM maven
SETX MAVEN_REPOSITORY %PACKAGE_HOME%\maven-win
MKDIR %USERPROFILE%\.m2
COPY /Y .\config\maven-settings.xml %USERPROFILE%\.m2\settings.xml

@REM gradle
SETX GRADLE_USER_HOME %PACKAGE_HOME%\gradle-win

@REM cargo
SET CARGO_HOME=%PACKAGE_HOME%\cargo-win
MKDIR %CARGO_HOME%
COPY /Y .\config\cargo.toml %CARGO_HOME%\config.toml
SETX CARGO_HOME %CARGO_HOME%
SETX CARGO_INSTALL_ROOT %REPOSITORY%
SETX CARGO_TARGET_DIR %PACKAGE_HOME%\cargo-win\cache

@REM pip
SET PIP_HOME=%PACKAGE_HOME%\pip-win
MKDIR %PIP_HOME%
COPY /Y .\config\pip.ini %PIP_HOME%\pip.ini
SETX PIP_PREFIX %PIP_HOME%
SETX PIP_CONFIG_FILE %PIP_HOME%\pip.ini
SETX PYTHONPATH %PIP_PREFIX%\lib\python3.12\site-packages
SET Path=%PIP_PREFIX%\bin;%Path%

@REM npm
SET NPM_HOME=%PACKAGE_HOME%\npm-win
COPY /Y .\config\npmrc %USERPROFILE%\.npmrc
SETX npm_config_prefix %NPM_HOME%
SETX npm_config_cache %NPM_HOME%\cache

@REM go
SETX GO111MODULE on
SETX GOPROXY https://goproxy.cn
SETX GOPATH %PACKAGE_HOME%\go-win

@REM WindowsTerminal
SET Path=%REPOSITORY%\development\windows-terminal-1.21;%Path%

@REM vim
COPY /Y .\config\vimrc %UserProfile%\_vimrc
MKDIR %PACKAGE_HOME%\vim-runtime
ROBOCOPY .\config\vim %PACKAGE_HOME%\vim-runtime /S /XO /V
REG ADD HKEY_CURRENT_USER\Software\Classes\GVIM\DefaultIcon  /t REG_SZ /d "\"%REPOSITORY%\development\gvim-win-9.1\gvim.exe\",0" /f
REG ADD HKEY_CURRENT_USER\Software\Classes\GVIM\shell\open\command /t REG_SZ /d "\"%REPOSITORY%\development\gvim-win-9.1\gvim.exe\" %%1" /f
SET Path=%REPOSITORY%\development\gvim-win-9.1;%Path%
SET SUFFIXS=.asm .bat .c .conf .csv .gitignore .ini .java .json .kt .kts .log .md .npmrc .nss .properties .py .rs .svg .toml .txt .wslconf .xml .vim .yaml .yml .zsh
(FOR %%s IN (%SUFFIXS%) DO (
   ECHO Register %%s
   REG ADD HKEY_CURRENT_USER\Software\Classes\%%s  /t REG_SZ /d "GVIM" /f
))

@REM VsCode
SET Path=%REPOSITORY%\development\vscode-win-1.96;%Path%

@REM IntellJ
MKDIR %PACKAGE_HOME%\intellj-plugins
COPY /Y .\config\idea.properties %PACKAGE_HOME%\intellj-plugins\idea.properties
ECHO. > %PACKAGE_HOME%\intellj-plugins\idea64.exe.vmoptions
for /f "delims=" %%i in (.\config\idea64.exe.vmoptions) do (
    SET idea=%%i
    SET idea=!idea:plugin-place=%PACKAGE_HOME%\intellj-plugins!
    ECHO !idea! >> %PACKAGE_HOME%\intellj-plugins\idea64.exe.vmoptions
)
SETX IDEA_PROPERTIES %PACKAGE_HOME%\intellj-plugins\idea.properties
SETX IDEA_VM_OPTIONS %PACKAGE_HOME%\intellj-plugins\idea64.exe.vmoptions
SET Path=%REPOSITORY%\development\idea-win-2024.3\bin;%Path%

SETX Path %Path%