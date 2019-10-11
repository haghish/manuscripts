Additional commands
=======================

- these commands are borrowed from `weaver` package
	- they are installed automatically as a dependency
- They come very handy when the document is generated by a program dynamically or within a loop
- They allow more details for styling a document, compared to Markdown
	- Adding a figure Automatically
	- adding a dynamic table
	- adding dynamic text

Adding figures dynamically
==========================

- we previously used Markdown to include an image in the document
- The process was:
    1. saving a graph from Stata to the disk
    2. including the graph to the dynamic document
- This procedure can be further simplified, using the __`img`__ command
    1. Automatically capture the current graph from Stata and include it in the dynamic document
    2. Include a figure from the disk/internet in the dynamic document
    3. Resize the width and the height of the image in the dynamic document
    4. Align the image to the left (default) or center of the document
    5. Add a graph description

Syntax of `img` command
========================

Import graphical files in the dynamic document

    img [using filename] [, markup(str) title(str) width(int) height(int) left center ]

Automatically include the current graph from Stata in the dynamic document

    img [, markup(str) title(str) width(int) height(int) left center ]

------

Examples
============

- create a do-file and execute it with `markdoc` actively or passively

~~~
. sysuse auto
. histogram price
. img
~~~

In this example, __`img`__ has stored the current graph in a directory called __Weaver-figure__

Adding text dynamically
==========================

- the `txt` command is somehow like the `display` command, but it's used for writing text in the dynamic document
- it can be used to write text within loops or programs and interpret scalars, global, or local macros within
- try typing `txt 1+1` 

~~~
. sysuse auto
. summarize price
. txt "the mean of Price variable is " r(mean)
~~~


Syntax of the `txt` command
===========================

    txt [code] [display_directive [display_directive [...]]]

where the `display_directive` can be:

~~~
"double-quoted string"
`"compound double-quoted string"'
[%fmt] [=]exp
_skip(#)
_column(#)
_newline[(#)]
_dup(#)
,
,,
~~~


Writing dynamic tables
=======================

- __`tbl`__ simplifies writing and styling dynamic tables
- The default markup language is Markdown, but it also support LaTeX and HTML
- It can align the content of each column to the left, center, or right
- It creates a table somehow similar to the way a matrix is defined in Stata


`tbl` Syntax
============

The syntax of the command is:

     tbl (*[,*...] [\ *[,*...] [\ [...]]]) ///
         [, markup(str) title(str) width(int) height(int) center left ]

where the __`*`__ represents a display directive, which is:

~~~   
 "double-quoted string"
 `"compound double-quoted string"'
 [%fmt] [=]exp
 ,
 {l}
 {c}
 {r}
~~~

Examples
=============

- creating a simple 2x3 table with string and numbers

~~~
tbl ("Column 1", "Column 2", "Column 3" \ 10, 100, 1000 )
~~~

- creating a table that includes scalars and aligns the columns to left, center, and right respectively

~~~
tbl ({l}"Left", {c}"Centered", {r}"Right" \ c(os),  c(machine_type), c(username))
~~~
