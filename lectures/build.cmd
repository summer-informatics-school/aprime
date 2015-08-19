@echo off

if not exist main.tex (
	echo File not found: %1
	exit /b 1
)

texify --pdf --engine=xetex --tex-option=-8bit --tex-option=-shell-escape main.tex
