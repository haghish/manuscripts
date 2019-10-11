`markdoc` Installation
=======================

- `markdoc` is hosted on GitHub only <https://github.com/haghish/markdoc>

- `markdoc` has package dependencies which are:
    + [`weaver`](https://github.com/haghish/weaver)
    + [`datadoc`](https://github.com/haghish/datadoc)
    + [`md2smcl`](https://github.com/haghish/markdown)

- The `github` command  can install `markdoc` and its dependencies. You can install the `github` command as follows:

~~~
. net install github, from("https://haghish.github.io/github/")
~~~

---

- Once the `github` command is installed, installing any Stata package from GitHub would be easy
- The installation only requires the authors' GitHub `username` and the `repository` name, separated by a slash
- For example, to install or update `markdoc` and its dependencies type the following command:

~~~~
. github install haghish/markdoc
~~~~

---

Alternatively, you can use `github` command to search for `markdoc` package in GitHub by typing:

~~~
. github search markdoc
~~~

![`github search` output](images/search-output.png)



Third-party software installation (optional)
============================================

- Previous versions of `markdoc` required other software for generating Word and PDF documents. However, in the recent version of `markdoc`, __this is no longer a necessity__. The third-party software are particularly required for Stata version 14 and below. 
- Throughout this presentation, I will use the __`mini`__ engine that allows `markdoc` to run independent of any third-party software 
- Nevertheless, installing the third-party software can enhance `markdoc`'s capabilities and is generally recommended
- The third-party software are
    + [Pandoc](http://pandoc.org/) for converting Markdown to other file formats
    + [wkhtmltopdf](wkhtmltopdf.org) for creating PDF documents from source written with Markdown or HTML
    + users who wish to write with LaTeX will require a LaTeX distribution
- The packages hosted on GitHub only include the Ado and help files
- The third-party software should be downloaded and installed manually. However, `markdoc` provides optional automatic installation for Pandoc and wkhtmltopdf, which maybe more convenient for many users

---

## Manual installation of third-party software

- Pandoc software can be downloaded from [www.pandoc.org](www.pandoc.org) website
    + Once Pandoc is installed, the path to executable Pandoc on the operating system can be provided to markdoc using the `pandoc(str)` option
- wkhtmltopdf software can be downloaded from [www.wkhtmltopdf.org](www.wkhtmltopdf.org)
    + Next, the path to the executable wkhtmltopdf file should be provided to `markdoc` using the `printer(str)` option
- For compiling LaTeX to PDF, a proper LaTeX distribution based on the operating system should be downloaded from [www.latex-project.org](www.latex-project.org)
    + the path to executable pdfLaTeX compiler should be given to `printer(str)` option.
- The path to Pandoc, wkhtmltopdf, and pdfLaTeX can be permanently defined using the __`weave setup`__ command. This command opens a script file that memorizes the path to each software within a particular global macro.



---

     . weave setup
![defining the paths to required software permanently](images/weavesetup.png)

---

## Automatic installation of third-party software

The `markdoc` command includes the `install` option which downloads Pandoc and wkhtmltopdf software automatically, if they are not already installed or cannot be accessed by `markdoc`. As shown in the example below, adding the `install` option will avoid any error regarding the required software and installs them on the fly:

~~~
qui log using example.smcl, replace
display "If necessary, install the required software on the fly"
qui log c

markdoc example.smcl, export(pdf) install
~~~

---

If the `install` option is not specified and `markdoc` does not detect the required software on your machine, a message will be returned on your machine to indicate that the required software was not found.

![Pandoc error message](images/pandocsetup.png)

---

Clicking on the `install pandoc automatically` will install Pandoc on your machine:

![installing Pandoc automatically](images/pandocsetup2.png)


---

A similar massage is displayed if you are exporting a PDF document and `markdoc` does not access wkhtmltopdf

~~~
markdoc example.smcl, export(pdf)
~~~

![Figure 2.5. wkhtmltopdf error massage](images/wkhtmltopdfsetup.png)



