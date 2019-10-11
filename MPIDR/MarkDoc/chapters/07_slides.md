Dynamic Presentation Slides
===========================

- `markdoc` supports generating presentation slides in HTML and PDF formats
- slides can be made from the same source used for generating analysis documents
- the main difference is that slides should be broken into small frames
- There are two possibilities for separating the frames:
    + using header 1 e.g. `# Header 1`
    + using horizontal line syntax `- - -`

type `db markdoc` and check out the **Presentation Slide** tab

-----

![Using `markdoc` GUI for generating slides](./images/dialogbox-slide.png)

------

~~~
quietly log using example, replace smcl

/***
Using `markdoc` for generating slides
=====================================

> Let's begin by using some Stata commands
***/

sysuse auto, clear
summarize price
histogram price

/***
---
***/

img

qui log c

markdoc example.smcl, export(slide) replace  ///
author("E. F. Haghish") date                 ///
title("Example of passive documentation")    ///
affiliation("University of Göttingen")
~~~


Task
===========

- create a presentation slide and execute it in `markdoc` actively
- use the `markdoc` GUI and change its theme and color
