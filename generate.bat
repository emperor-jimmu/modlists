@echo off
echo Building Santos Supreme PDF...
typst compile template.typ output/santos-supreme.pdf
if %ERRORLEVEL% neq 0 (
    echo Build failed with error code %ERRORLEVEL%
    exit /b %ERRORLEVEL%
)
echo Success: output/santos-supreme.pdf
