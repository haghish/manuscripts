* REMEMBER! execute it in the project directory ... 



* Presentation slides (based on the book's content)
* ==========================================================

qui log using slides, replace
//IMPORT ./chapters/01_introduction.md
//IMPORT ./chapters/02_installation.md
//IMPORT ./chapters/03_workflow.md
//IMPORT ./chapters/04_markup.md
//IMPORT ./chapters/05_markers.md
//IMPORT ./chapters/06_Aditional_commands.md
//IMPORT ./chapters/08_help.md
qui log c


markdoc slides, export(slide) replace         ///
  title("Reproducible Analysis in Stata 16")  ///
	subtitle("with MarkDoc package")          ///
	affiliation("University of Göttingen")    ///
	author("E. F. Haghish") bcolor(crane)     ///
	btheme(AnnArbor) bcodesize(footnotesize)  ///
	bwidth(140) bheight(110)
