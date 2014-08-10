.IGNORE:

TARGET = ms

all: pdf

pdf: 
	latex  	$(TARGET)
	bibtex    	$(TARGET)
	latex  	$(TARGET)
	latex  	$(TARGET)
	dvipdf $(TARGET).dvi

clean:
	/bin/rm -f *~ *.dvi *.log *.aux *.toc *.bbl *blg *.end *.out $(TARGET)Notes.bib */*~ */*.dvi */*.log */*.aux */*.toc */*.bbl */*blg */*.end */*.out $(TARGET)Notes.bib
#	/bin/rm -f $(TARGET).ps $(TARGET).pdf 
