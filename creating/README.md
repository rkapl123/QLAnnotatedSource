# QuantLib fully annotated documentation

An alternative (fully annotated, including source code !) Documentation for the usage and the design of the QuantLib library: <https://rkapl123.github.io/QLAnnotatedSource>.

To generate this for yourself (on windows only), you have to customize the scripts runGenerateDoc.cmd, setting the variables for the doxygen executable path and the Quantlib root folder
```
set QL=C:\dev\Quantlib
set doxybin="C:\Program Files\doxygen\bin\doxygen.exe"
```

and copyFromHtml.cmd, setting the variable for the Quantlib root folder
```
set QL=C:\dev\Quantlib
```

Prerequisite: perl (to set the version in the HTML header files with UpdateVersion.pl), doxygen and dot.

To produce the annotated source, first run runGenerateDoc.cmd, setting the version first, then (after doxygen has finished creating the files) run copyFromHtml.cmd
