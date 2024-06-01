set QL=C:\dev\Quantlib
rd ..\d0 /S /Q
rd ..\d1 /S /Q
rd ..\d2 /S /Q
rd ..\d3 /S /Q
rd ..\d4 /S /Q
rd ..\d5 /S /Q
rd ..\d6 /S /Q
rd ..\d7 /S /Q
rd ..\d8 /S /Q
rd ..\d9 /S /Q
rd ..\da /S /Q
rd ..\db /S /Q
rd ..\dc /S /Q
rd ..\dd /S /Q
rd ..\de /S /Q
rd ..\df /S /Q
rd ..\search /S /Q
del ..\*.* /Q
xcopy %QL%\Docs\html\ .. /S
copy /Y %QL%\Contributors.txt .. 
copy /Y %QL%\LICENSE.TXT .. 
xcopy ..\creating\*.md .. /S
xcopy ..\creating\*.yml .. /S
pause