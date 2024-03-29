@echo off
cd ..
setlocal
:PROMPT
SET AREYOUSURE=N
SET /P AREYOUSURE=Do you want to create new virtual environment (Y/[N])? 
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

SET PATH=C:\Compilers\Python311\Scripts\;C:\Compilers\Python311\;%PATH%
python -m venv .venv
call .\.venv\Scripts\activate.bat
pip install --upgrade pip
pip install --upgrade uv

pip install -r requirements.txt
pip install -r python-csv-airbnb/requirements.txt
pip install -r python-pdf-tables/requirements.txt
pip install -r python-hana/requirements.txt

:END
endlocal
