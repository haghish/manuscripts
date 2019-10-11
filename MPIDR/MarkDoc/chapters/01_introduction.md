<!---------------------------------------------
PREFACE
---------------------------------------------->

Overview 
========================

- Reproducible research
	- Reproducible analysis
		- Literate programming
		- Automating statistical analysis using `markdoc` in Stata
		- Practicing reproducible analysis in Stata
- `markdoc` software
	- Installing `markdoc` from GitHub
	- Installing Pandoc and Wkhtmltopdf (optional) 
- `markdoc` workflow
- Adding documentation to create automatic analysis report
	 - Markdown notation
	 - `markdoc` commands 
	 - `markdoc` additional markup notations
- Using `markdoc` in classroom
	 - presentation slides within Stata
	 - classroom documents 
- Using `markdoc` for software documentation
	 - Stata help files
	 - Package vignette or supplementary web material

Reproducible research
====================

- Replication vs reproducibility

- Statistical analyses are carried out to draw conclusions from data, gain knowledge, and communicate claims with the scientific community.

- Traditionally, this workflow has been manual. However, it has many flaws if we put it into perspective:
	+ No syntax is written for data analysis (mouse and click approach)
	+ Only a summery of the analysis and results is reported
	+ Analysis details are not communicated in the manuscript
	+ Analysis and results cannot be validated or reviewed


---

![The procedure we are intending to automatize](images/analyticprocess.png)

Literate programming
====================

- The big problem of software documentation
- The literate programming solution
- Adaption of the literate programming in statistics
    + Should ideally supports real-time documentation
    + Should examine the analysis
    + Should provide a restricted framework to improve the code development


`markdoc` package
===================

- `markdoc` is a general purpose literate programming software
- developed particularly for Stata
- `markdoc` is versatile:
    + generate publication-ready analysis report in various document formats (PDF, Docx, ODT, HTML, LaTeX, etc.)
	+ includes a syntax highlighter
    + generate dynamic presentation slides
    + generate dynamic Stata help files in STHLP format or create a package vignette
- Analysis documentation/interpretation is written within _do-files_, as usual
- It emphasizes code readability by keeping the documentation simple

MarkDoc features
================

- It works with the usual workflow of Stata do-files
    + It is easy to use
    + It underscores clean and readable documentation
- recognizes multiple markup languages
- has a built-in syntax highlighter
- supports several output documents
    + develops text documents
    + presentation slides
    + software documentation

---

![Supported document formats](images/diagram_supported_docs_small.png)


Dialog box
=========================

`markdoc` was designed to be a very user-friendly package. To further facilitate learning `markdoc`, a dialog box was programmed to visualize the main options and functionalities of the package.

- The dialog box includes three tabs, each specializes in a particular document format
    + dynamic document
    + presentation slide
    + package vignette

> To lunch the dialog box type:

~~~
db markdoc
~~~

---

![The dialog box](images/dialogbox_small.png)


Dialog box for __`markdoc`__ 5.0
===========================

Use the __`mini`__ dialog box, if third-party software are not installed. 

    . db mini
	
![The dialog box](images/mini.png)

Who can use `markdoc`?
======================

`markdoc` was designed having learners in mind. It offers a GUI, a syntax highlighter, and plenty of features to encourage beginners to use it.

1. Students - as early as introductory statistics courses - can use `markdoc` to actively take note inside Stata Do-file Editor

2. University lecturers who teach statistics using Stata, can use `markdoc` to generate PDF slides, educational materials

3. Statisticians can use `markdoc` for creating dynamic analysis reports

4. Finally, advanced users and Stata programmers can use `markdoc` to generate dynamic help files and package vignettes

--- 


![The presentation slides are based on a book](images/book.png)

