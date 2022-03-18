REM current drive no matter what letter windos assigns it
set DRIVE=%CD:~0,2%

REM optional programs, not tested
REM set MINGW_PATH=%DRIVE%\Mingw64\mingw64\bin
REM set GIT_PATH=%DRIVE%\PortableGit\cmd
REM set VSCODE_PATH=%DRIVE%\Programs\VSCode

REM add environment variables necessary for rust
setx RUSTUP_HOME "%DRIVE%\Rust\.rustup" 
setx CARGO_HOME "%DRIVE%\Rust\.cargo" 
setx RUST_PATH "%DRIVE%\Rust\.cargo\bin"

REM add rust to the path environment variable
set PATH=%PATH%;%RUST_PATH%

dir
pause