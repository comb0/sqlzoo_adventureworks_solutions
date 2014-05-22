DOC = AdventureWorks_Loesung
TF = pdf
TC = pdflatex
TCFLAGS = -halt-on-error -interaction nonstopmode
EXPENDABLES = ${DOC}.{log,aux,out,toc}
EDITOR = gvim -p
VIEWER = zathura

all: ${DOC}.${TF}

%.pdf: %.tex %.toc code/*/*.sql lstset.tex 
	${TC} ${TCFLAGS} $<

%.toc: %.tex
	${TC} ${TCFLAGS} $<

.PHONY: clean squeaky_clean edit view

clean:
	-rm -f ${EXPENDABLES}

squeaky_clean: EXPENDABLES+=${DOC}.${TF}
squeaky_clean: clean

edit:
	${EDITOR} Makefile ${DOC}.tex

view: ${DOC}.pdf
	${VIEWER} $< >/dev/null 2>&1 &

dnotify:
	while true;\
		do dnotify -M -o -r $(dir ${DOC}.${TCTARGET}) --e make;\
	done
