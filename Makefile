handbook.pdf: handbook-body.tex handbook.tex
	pdflatex -interaction=batchmode handbook.tex
	pdflatex -interaction=batchmode handbook.tex

handbook-body.tex: handbook.md
	pandoc -f markdown -t latex ./handbook.md -o ./handbook-body.tex
