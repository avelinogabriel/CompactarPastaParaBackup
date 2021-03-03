ECHO OFF

FOR /F "tokens=1,2,3 delims=/ " %%a in ("%DATE%") do (
set DIA=%%a
set MES=%%b
set ANO=%%c
)

FOR /F "tokens=1,2,3 delims=:, " %%a in ("%TIME%") do (
set H=%%a
set M=%%b
)

set H=0%H%
set H=%H:~-2%

set FORMATO=%ANO%_%MES%_%DIA%_%H%_%M%

cd C:\Users\Gabriel\Documents
rar a c:\Users\Gabriel\Desktop\BackupDocumentos_%FORMATO%.rar X XX