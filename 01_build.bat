@echo off
setlocal

pdflatex -interaction=nonstopmode -halt-on-error -file-line-error Bachelorarbeit.tex
if errorlevel 1 exit /b 1

biber Bachelorarbeit
if errorlevel 1 exit /b 1

makeindex -s 05_konfiguration/03_indexstil.ist -o Bachelorarbeit.ind Bachelorarbeit.idx
if errorlevel 1 exit /b 1

pdflatex -interaction=nonstopmode -halt-on-error -file-line-error Bachelorarbeit.tex
if errorlevel 1 exit /b 1

pdflatex -interaction=nonstopmode -halt-on-error -file-line-error Bachelorarbeit.tex
