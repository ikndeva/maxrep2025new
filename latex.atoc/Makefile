### Makefile 
### suffix rule
.SUFFIXES: .ps .eps .tex .dvi .pdf .pre .preview .pack .kill .crop _crop.pdf _crop.pack 
.PHONY: stable stable.cp stable.pack stable.clean 

# MAIN=main
# MAIN=workmain
# MAIN=worknumber
# MAIN=workseq
# MAIN=worklcs
# MAIN=workregex
# MAIN=worksssp
MAIN=main

CHAPTERS=
## pack
PJNAME=maxrep2025latin
# PJNAME=cdawg2023slide
PACKDIR=~/PUB

## file parameter
.tex.pdf: 
	latexmk $*.tex 

.tex.preview: 
	latexmk -pvc $*.tex & 

.tex.pre: 
	latexmk -pvc $*.tex & 

.tex.ps: 
	@ps aux | grep 'latexmk -pvc $*.tex' | grep -v 'grep' | gawk '{ print $$0; }' | xargs -I xxx echo xxx

.tex.kill: 
	@ps aux | grep 'latexmk -pvc $*.tex' | grep -v 'grep' | gawk '{ print $$0; }' | xargs -I xxx echo xxx
	@ps aux | grep 'latexmk -pvc $*.tex' | grep -v 'grep' | gawk '{ print $$2; }' | xargs -I xxx kill -9 xxx

.pdf_crop.pdf:
	pdfcrop --margin '50 50' $*.pdf $*_crop.pdf

.pdf.pack: 
	cp $*.pdf $(PACKDIR)/$(PJNAME)_$*_`date +"%y%m%da%H%M"`.pdf
	@ls -altr $(PACKDIR) | tail -1

_crop.pdf_crop.pack: 
	cp $*_crop.pdf $(PACKDIR)/$(PJNAME)_$*`date +"%y%m%da%H%M"`.pdf
	@ls -altr $(PACKDIR) | tail -1

##  pack

pack: $(MAIN).pdf 
	cp $(MAIN).pdf $(PACKDIR)/$(PJNAME)_$(MAIN)`date +"%y%m%da%H%M"`.pdf
	@ls -altr $(PACKDIR) | tail -1 

## publish
PUBDIR='/Users/arim/Documents/PUB'
pub: $(MAIN).pdf 
	cp $(MAIN).pdf $(PUBDIR)/$(PJNAME)`date +"%y%m%da%H%M"`.pdf
	@ls -altr $(PUBDIR) | tail -1 

## 
pre:
	latexmk -pvc $(MAIN) & 

## listing and kill anaconda/jupyter processes 
ps:
	@ps aux | grep 'latexmk -pvc' | grep -v 'grep' | gawk '{ print $$0; }' | xargs -I xxx echo xxx

kill:
	ps aux | grep 'latexmk -pvc' | grep -v 'grep' | gawk '{ print $$2; }' | xargs -I xxx kill -9 xxx

###
xbb:
	for f in */fig; do echo "enter $$f"; pushd $$f; pwd; extractbb -q *.pdf *.png; popd; done

###
DVIOPT=-p a5 
all: 
	latexmk $(MAIN)

clean: 
	rm -f *~ *.aux *.axp *.log *.blg *.toc *.idx *.dvi *.bbl *.ilg *.ind *.out  *.fls *.fdb_latexmk *.loa *.lon *.lof *.lot *.vtc
	rm -f *.nav *.snm 
	rm -f *.pdf 

cleanall: 
	make clean
	rm -f *.pdf

##################################
## backup inputs
TMP_STB=_stable_files.txt
BACKDIR=stable

stable: stable.cp
stable.cp:
	if [ -d $(BACKDIR) ];  then echo "backup dir already exists and go ahead: $(BACKDIR)"; else (echo "mkdir $(BACKDIR)"; mkdir $(BACKDIR)); fi
	grep -h 'input{' main.tex config.tex | grep -v '^%' | sed -e 's/\\input{\(.*\)}/\1/' > $(TMP_STB)
	cat $(TMP_STB) | xargs -Ixxx  cp xxx.tex $(BACKDIR)
	ls -1 CHANGELOG_.md main.tex mainshort.tex *.bib *.cls >  $(TMP_STB)
	cat $(TMP_STB) | xargs -Ixxx cp xxx $(BACKDIR)
	echo "make stable: files copied to $(BACKDIR):"
	\ls -1 $(BACKDIR)

stable.pack:
	zipren -d $(BACKDIR)

stable.mkdir:
	if [ -d $(BACKDIR) ];  then ls stable; else (echo "mkdir $(BACKDIR)"; mkdir $(BACKDIR)); fi

stable.clean:
	rm -r $(BACKDIR)

# grep 'input{' main.tex | grep -v '^%' | sed -e 's/\\input{\(.*\)}/\1/' | xargs -Ixxx  cp xxx.tex stable1

#################################
### cropping a pdf figure
FIGIN=figpathsets2.org.pdf
FIGOUT=figpathsets2.pdf

figcrop: 
	pdfcrop --margin '0 50' $(FIGIN) $(FIGOUT) 

##################################
### git
MSG = "work"
git: 
	git add -v .; echo "commiting with MSG='`hostname | cut -d"-" -f 1`: $(MSG)'"; git commit -m "`hostname | cut -d"-" -f 1`: $(MSG)"; git push -v

gittest:
	echo "`hostname | cut -d"-" -f 1`: $(MSG)"


#EOF
