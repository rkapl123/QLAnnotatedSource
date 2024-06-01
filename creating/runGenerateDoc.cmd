set QL=C:\dev\Quantlib
set doxybin="C:\Program Files\doxygen\bin\doxygen.exe"
perl UpdateVersion.pl
copy quantlibFull.doxy %QL%\Docs
copy quantlibheaderFull.html %QL%\Docs
rmdir /S /Q %QL%\Docs\html 
mkdir %QL%\Docs\html 
cd %QL%\Docs
%doxybin% quantlibFull.doxy 
pause