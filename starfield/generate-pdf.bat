@echo off
echo Compiling Void Enhanced PDF...
typst compile main.typ output/Void-Enhanced.pdf --font-path assets
echo Done. Output: output/Void-Enhanced.pdf
