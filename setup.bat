set DRIVE=%CD:~0,2%

REM set MINGW_PATH=%DRIVE%\!\Mingw64\mingw64\bin
REM set GIT_PATH=%DRIVE%\!\PortableGit\cmd
REM set VSCODE_PATH=%DRIVE%\!\Programs\VSCode
setx RUSTUP_HOME "%DRIVE%\Rust\.rustup" 
setx CARGO_HOME "%DRIVE%\Rust\.cargo" 
setx RUST_PATH "%DRIVE%\Rust\.cargo\bin"

set PATH=%PATH%;%RUST_PATH%

REM echo %RUSTUP_HOME%
REM cd %RUST_PATH%

dir
pause