#-----------------------------------------------------
MAIN=main
ICONSDIR=../images/icons/
#-----------------------------------------------------

all: *.txt
	@echo '==> Compiling asciidoc files to generate HTML'
	asciidoc -a toc2 -b html5 -a icons -a iconsdir=$(ICONSDIR) -a data-uri \
	 -a numbered $(MAIN).txt
	asciidoc -b deckjs -a icons -a iconsdir=$(ICONSDIR) -a data-uri -a numbered \
	 -a deckjs_transition=horizontal-slide -a deckjs_theme=web-2.0 \
	 -o $(MAIN).dekjs.html $(MAIN).txt
	
clean: 
	@echo '==> Cleaning compilation files'
	@# fichiers de compilation latex
	@rm -f *.log *.aux *.dvi *.toc *.lot *.lof *.ilg
	@# fichiers de bibtex
	@rm -f *.blg
