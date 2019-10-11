* execute it in the project directory ...

cd "/Volumes/BRAIN/Teacher/github"

* Presentation slides (based on the book's content)
* ==========================================================

qui log using slides, replace
//IMPORT ./chapters/011_github.md
qui log c


markdoc slides, export(slide) replace                     ///
	title("Systematic management of research materials with Git and GitHub")  ///
	affiliation("University of Göttingen")                ///
	address("Department of Medical Psychology and Medical Sociology") ///
	author("E. F. Haghish") bcolor(crane)                 ///
	btheme(AnnArbor) bcodesize(footnotesize)              ///
	bwidth(140) bheight(110)
	
qui log using tips, replace
//IMPORT ./chapters/000_quick-tips.md
qui log c

markdoc tips, export(slide) replace                     ///
	title("Quick tips for organizing computational code")  ///
	affiliation("University of Göttingen")                ///
	address("Department of Medical Psychology and Medical Sociology") ///
	author("E. F. Haghish") bcolor(crane)                 ///
	btheme(AnnArbor) bcodesize(footnotesize)              ///
	bwidth(140) bheight(110)
	
	
