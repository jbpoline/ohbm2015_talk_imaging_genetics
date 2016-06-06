# latex simple Makefile  

# You can set these variables from the command line.
TALK       = talk
HEADER     = header
FOOTER     = footer
THEME      = CambridgeUS
PAPER      = talk
LATEX      = pdflatex 
BIBTEX     = bibtex 
VISUALIZE  = evince
TOCLEAN    = $(TALK).aux $(TALK).toc $(TALK).log \
	     $(TALK).out $(TALK).bbl $(TALK).blg \
	     $(TALK).spl $(TALK).dvi $(TALK).nav \
	     $(TALK).snm $(TALK).vrb $(TALK).pdf _tmp.tex 


# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter

.PHONY: help clean $(PAPER) all slides

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  $(PAPER): 	to make LaTeX files, you can set PAPER=a4 or PAPER=letter"
	@echo "  clean: 	to clean " 
	@echo "  all:		to make clean, make, and visualize " 
	@echo "  slide:		to run pandoc " 
	@echo "  beamer:	to produce beamer .tex with pandoc " 

clean:
	-rm $(TOCLEAN)
	@echo "rm  $(TOCLEAN)"

$(PAPER):
	-$(LATEX) $(PAPER).tex 
	-$(BIBTEX) $(PAPER).aux 
	-$(LATEX) $(PAPER).tex 
	-$(LATEX) $(PAPER).tex 

visu:	
	-$(VISUALIZE) $(PAPER).pdf &
	@echo $(PAPER).pdf
all:	
	-make clean
	-make $(PAPER) 
	-make visu

# slides:
# 	-make beamer
# 	-mv $(TALK).tex _tmp.tex
# 	-cat $(HEADER).tex _tmp.tex $(FOOTER).tex > $(TALK).tex
# 	-$(LATEX) $(TALK).tex
# 	-$(VISUALIZE) $(TALK).pdf

beamer:
	-pandoc  -t beamer $(TALK).md -V theme:$(THEME) -o $(TALK).tex

pandoc:
	-pandoc  -t beamer $(TALK).md -V theme:$(THEME) -o $(TALK).pdf

slides:
	-pandoc  -t beamer $(TALK).md -V theme:$(THEME) -o $(TALK).pdf
	-make visu

