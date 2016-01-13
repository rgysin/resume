PDFS := $(patsubst %.tex, %.pdf, $(wildcard *.tex))

TEXCC := xelatex
GLOCC := makeglossaries
BAD_EXTS := log aux toc xdy glo out acn acr alg glg gls ist bbl blg nav snm

all : $(PDFS)

clean :
	rm -f *.pdf $(patsubst %, *.%, $(BAD_EXTS))

%.pdf : %.tex
	$(TEXCC) $<
	$(TEXCC) $<
	rm -f $(patsubst %, *.%, $(BAD_EXTS))

.PHONY : all clean
