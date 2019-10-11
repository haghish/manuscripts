Stata help files
===========================

- Stata has it's own markup language
    + *Stata Markup and Control Language* (SMCL)
- All help files as well as default log files are written in this markup language
- Writing documentation with SMCL is not appealing:
    1. smcl is difficult
    2. somehow messy to write
    3. difficult to read, write, and comprehend
- literate programming with smcl is difficult and makes the script file too complex to read

-------

- `markdoc` can generate Stata help files from Ado and Mata files
- The software documentation can be written in Markdown, using the same procedure
- If the documentation can be exported to Stata help files or package vignette
- Type `db markdoc` and navigate to the **Package Vignette** tab:

---

![Using `markdoc` GUI for generating software documentation](./images/dialogbox-vignette.png)


Example
=============

- Let's make an Ado file, and use some simple Markdown syntax to write in it
- let's write a:
    + Header 1
    + Header 2
    + style some text
    + Indent text
    + add a line
    + add a link

----

~~~
/***
Title
======

__commandname__ - explain your command briefly. You can use simplified
syntax to make text _italic_, __bold__, ***emphasized***, or
add [hyperlink](http://www.haghish.com/markdoc)

Syntax
------

> __XXX__ _varlist_ [, _options_]

Example(s)
----------

    explain what it does
        . example command

    second explanation
        . example command
***/        
~~~

-------

- execute this example with `markdoc` GUI and generate:
    - a `sthlp` file
    - a `html` vignette
    - a `docx` vignette

- In the GUI, there is an option for appending documentation to an Ado file
- Apply the **Append help-file template** to see an example documentation template
- generate a sthlp and html file from the template

-------


![Example help file template](./images/sthlp.png)


