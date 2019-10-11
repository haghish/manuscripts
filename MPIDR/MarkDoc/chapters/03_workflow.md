<!---------------------------------------------
WORKFLOW
---------------------------------------------->

Workflow
======================

- `markdoc` has 2 separate modes

    + Passive mode (allows real-time documentation)
	    + Takes a log-file / script file (.ado, .mata, etc.)
	    + It does __NOT__ evaluate the code nor reproduce the analysis
	    + It produces a document very fast
	+ Active mode (for testing the whole code in a fresh environment)
	    + Takes a do-file
	    + Executes the analysis
	    + Evaluates its reproducibility
	    + It is much slower than the passive mode, because it repeats the analysis

---

![`markdoc` workflow](images/engine100.png)




Active documentation
====================

the do-file must be examined in a clean workspace, where no data is loaded in Stata. `markdoc` takes care of such a test, when executed actively. 

- using a single command to convert a smcl log-file to various document formats is convenient, but it does not ensure the reproducibility of the source code

- For example, users might have made changes to the data that are not included in the do-file, but are registered in the log. 

- There are markers for temporarily deactivating the log file...

- Active documentation is more strict, although time-consuming because every time `markdoc` is executed, the whole project is computed again. 

---

![The process of producing dynamic documents with `markdoc`](images/process2.png)

---

Let's assume that we have a do-file that only in displays the hello world text in a do-file named *example1.do*:

~~~
. display "Hello World"
~~~

Then the dynamic document can be produced by actively executing the do-file as shown below:

~~~
. markdoc example.do, mini export(docx) 
~~~

---


Let's have a closer look. We will load a data set in Stata. Then we execute the command related to the 
loaded data set with `markdoc`. We would expect an **error**, because in the workspace that `markdoc` is 
using to test the reproducibility of the code, there is no information about the loaded data set. 

- we load the *Auto* data set

    . sysuse auto, clear

- we create a do file that simply displays the first line of the data. we name the 
file *example2.do* and execute it in Stata:

---

~~~
. do example2.do

. list in 1

     +------------------------------------------------------+
  1. | make        | price | mpg | rep78 | headroom | trunk |
     | AMC Concord | 4,099 |  22 |     3 |      2.5 |    11 |
     |------------------------------------------------------|
     | weight  | length  |  turn  |  displa~t  |  gear_r~o  |
     |  2,930  |    186  |    40  |       121  |      3.58  |
     |------------------------------------------------------|
     |                        foreign                       |
     |                       Domestic                       |
     +------------------------------------------------------+
~~~


---

But if we examine it with `markdoc`, we get the following error. `markdoc` says it can't find the data! 

~~~
. markdoc example2.do, mini export(pdf) 

. list in 1
observation numbers out of range
r(198);

end of do-file
r(198);
~~~



Passive documentation
======================

- Is used for generating help files, package vignettes, or quick analysis documents from a log-file
- the SMCL log-file registers every entry in Stata including comments, commands, and text-based output, `markdoc` can produce a dynamic document passively from the SMCL log-file. 
- This workflow is indeed convenient, but not recommended for generating analysis documents
- the log-file – which is updated in real-time during the analysis session – can be used to generate the document in real-time too

---

![The process of producing dynamic documents with `markdoc`](images/process.png)

---

Example
========

Create a do file with this code and generate a PDF document with syntax highlighter. 
name the example *example3.do*. let's also use a few of the `markdoc` options to create the title of the document.

~~~
. quietly log using example, replace smcl

. display "Hello World"
Hello World

. qui log c
. markdoc example.smcl, mini export(pdf) statax
~~~

Syntax
=========================

To produce a dynamic document, the _filename_ of the documentation source should be given to `markdoc`

- **PASSIVE MODE**: a smcl log file with `.smcl` file extension or a script file with `.ado` or `.mata` extension
- **ACTIVE MODE**: a do-file  with `.do` extension 

- If the file extension is not specified, **SMCL log file is assumed** 
	- Specifying the file extension is recommended to provide further clarity

Essential syntax
================

![`markdoc`'s essential syntax](images/markdocsyntax.png)




