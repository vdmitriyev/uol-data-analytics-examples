@echo off
cd ..
REM SET PATH=C:\Soft\Anaconda3;C:\Soft\Anaconda3\Scripts;C:\Soft\Anaconda3\Library\bin;%PATH%
SET PATH=C:\Compilers\Python311\Scripts\;C:\Compilers\Python311\;%PATH%
call .venv\Scripts\activate.bat
jupyter notebook