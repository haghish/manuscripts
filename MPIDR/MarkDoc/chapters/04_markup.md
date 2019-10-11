Markup Languages
================

- `markdoc` supports 
    + LaTeX (requires third-party software)
	+ HTML
	+ Markdown

- In this lecture we will focus on Markdown, which is the simplest. The following links, from its developer's site, can provide a good background about Markdown:
	- <https://daringfireball.net/projects/markdown/>
	- <https://daringfireball.net/projects/markdown/syntax>
	- <https://daringfireball.net/projects/markdown/dingus>

- Markdown is 
    + minimalistic and clean 
	+ simple to read and write
	+ helps to focus on the content
	+ can be converted to many formats
	+ it has become the standard documentation markup language on coding sites as well as statistical software

---

- in `markdoc` the documentation (Markdown, html, or LaTeX) are written
within a special comment signs. 

~~~
    /***

       ...

    ***/
~~~

- There is no limit in how many times you can place these signs in a do-file. 
- These signs can appear anywhere in the analysis document, but not inside loops
	- I will introduce the __`txt`__ command later on which can be included inside loops and programs

---

![Markdown syntax](images/markdown.png)
