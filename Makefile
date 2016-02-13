.PHONY: build

build:
	-(docker-compose build && docker-compose run build)
	cp project.pdf GC-TM-venue-entropy-over-time.pdf	
	make simpleClean

project: project.tex citations.bib citations.tex
	pdflatex project
	pdflatex project
	bibtex project
	bibtex project
	pdflatex project
	pdflatex project
#	make simpleClean
	@echo "================================================"
	@echo "All done! project.pdf has been created. - Titus"
	@echo "================================================"

simpleClean:
	rm -rf project.log project.blg project.bbl project.aux *.dvi *.lot project.lof project.toc citations.log *~

clean:
	make simpleClean
	rm -rf project.pdf
