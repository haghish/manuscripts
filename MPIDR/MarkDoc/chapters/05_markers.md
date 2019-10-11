Additional Markup Notations
===========================

- Additional markers further organize documents prepared for `markdoc` software
- additional markers fall into two categories
    + Passive markers, used for writing static text and styling
    + Active markers, used for interpreting Stata macros in the document
- The Active markers only work if `markdoc` is executed in the active mode

Passive markers
===============

- annotate Stata "commands" and "outputs"
- they help to write a clean analysis report
- By default, MarkDoc includes all of the do-files and text outputs that appear in the Stata results windows. The additional notations allows you to be more selective about what to include:
    + Hiding Stata commands
    + Hiding Stata output
    + Hiding a part of a do-file
    + Importing external files

---

![](images/additional.notation.png)

Hiding Stata commands
=====================

~~~~
// --------------- Beginning additional_hide.do ---------------

/***

Hiding Stata commands
---------------------

The command bellow will not appear in the dynamic document.
However, their output will be included.

***/

/**/ sysuse auto, clear
/**/ summarize

~~~~

----

Executing the `markdoc` command will results in the following output:

    . markdoc additional_hide.do, export(docx)

![](images/additional.hide.png)



Hiding Stata output
===================

~~~~
// --------------- Beginning additional_hide2.do ---------------

/***

Hiding Stata output
---------------------

***/

/***/ sysuse auto, clear
/***/ summarize

~~~~

----

    . markdoc additional_hide2.do, export(docx)

![](images/additional.hide2.png)


Hiding a part of a do-file
==========================

- MarkDoc also allows hiding a section of the do-file, without influencing the code execution

~~~~
// --------------- Beginning additional_hide3.do ---------------

/***

Hiding Stata commands and output
--------------------------------

***/

//OFF

sysuse auto, clear
summarize

//ON

~~~~


----

Importing external files
========================

- A convenient feature for producing sophisticated documents
	- Slides
	- Handouts
	- eBook! 
- It reads other files (tables, documents, etc) into the main document
- This is the feature you are most-likely looking for writing publication-ready documents

Example
===========

- create a text file and name it *Intro.txt*
- Import the text file passively into a do-file
- execute `markdoc` and create a PDF file

---------

~~~~
Intro.txt
------------

As shown in this example, the text that is written in
__`intro.txt`__ will appear in the final document.
~~~~

The

~~~~
// -------------- additional_import2.do ---------------

//IMPORT intro.txt
~~~~

------

    . markdoc additional_import2.do, export(pdf)

![Preview of the output document](images/additional_import2.png)


`estout` package for exporting LaTeX tables
===========================================

- LaTeX also has a command for including external tex files.
- we will use the __`estout`__ package for generating a publication-ready better table

    . ssc install estout

- In the next example, first a LaTeX table is exported from Stata
- Then we write a simple LaTeX document and allow `markdoc` to complete the LaTeX layout automatically

---



~~~~
// --------------- Beginning additional_import.do ---------------


//OFF

sysuse auto, clear
sysuse auto
eststo: quietly regress price weight mpg
eststo: quietly regress price weight mpg foreign
esttab using table.tex, replace
eststo clear

//ON

/***

\section{Including external file}

\input{table.tex}

***/
~~~~

---------

    . markdoc additional_import.do, markup(latex) export(pdf) master replace

![Preview of the PDF document](images/additional.input.png)




Active markers
===============

- used for writing dynamic text, which includes _scalars_ or _macros_ that should be automatically interpreted int he text
- only work in the Active mode
- can show the values of
    - scalars
    - variable observations
    - local macro
    - global macros
- values should be placed within __`<!*!>`__ marker


------


### ACTIVE MARKERS TABLE

![Preview of the PDF document](images/markerstable.png)



markersexample.png

Example
==============


~~~{js}
local a = 1
scalar b = 2
matrix define A = (20,30\40,50)

/***
This is heading <!`a'!>
=======================

The values of a matrix can be displayed within the text. For example,
you can write <!A[1,1]!> which shows the scalar of the first row and
first column of the matrix in your documentation. This feature makes
writing dynamic text much more convenient compared to the previous procedure.

This is heading <!b!>
---------------------

REMEMBER, that this procedure only works if you execute a do-file with
markdoc, that is, using the `markdoc filename.do, export(format)` syntax.
***/
~~~

