STIME = date '+%s' > $@_time
ETIME = read st < $@_time ; echo make recipe completed in $$((`date '+%s'`-$$st)) seconds ; rm -f $@_time

all: figures dsm



dsm: figures
	$(STIME)
	pdflatex -draftmode dsm
	#makeglossaries presentation
	pdflatex -draftmode dsm
	pdflatex dsm
	$(ETIME)

once:
	$(STIME)
	pdflatex dsm
	$(ETIME)

cleanDsm:
	cd figures && $(MAKE) clean
	rm -f dsm.aux dsm.log dsm.nav dsm.out dsm.pdf dsm.snm dsm.toc dsm.acn dsm.acr dsm.alg dsm.glg dsm.glo dsm.gls dsm.glsdefs dsm.ist



.PHONY: figures
svgs:
	cd figures && $(MAKE)

cleanSvgs:
	cd figures && make clean



clean: cleanDSM

cleanAll: cleanDSM cleanFigures

