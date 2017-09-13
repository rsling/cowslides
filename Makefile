LX = latex
PP = ps2pdf
PX = pdflatex
BX = bibtex
DP = dvips
AR = evince

DVIPSFLASG = -dAutoRotatePages=/None
TEXFLAGS = -interaction=nonstopmode -enable-installer
TEXFLAGSDBG = -enable-installer
FILEN = talk
FILEN_EN = talk-en

all:
	-$(LX) $(TEXFLAGS) $(FILEN)
	-$(BX) $(FILEN)
	-$(LX) $(TEXFLAGS) $(FILEN)
	-$(LX) $(TEXFLAGS) $(FILEN)
	-$(DP) $(FILEN)
	-$(PP) $(FILEN).ps

quick:
	-$(LX) $(TEXFLAGS) $(FILEN)
	-$(DP) $(FILEN)
	-$(PP) $(FILEN).ps

en:
	-$(LX) $(TEXFLAGS) $(FILEN_EN)
	-$(BX) $(FILEN_EN)
	-$(LX) $(TEXFLAGS) $(FILEN_EN)
	-$(LX) $(TEXFLAGS) $(FILEN_EN)
	-$(DP) $(FILEN_EN)
	-$(PP) $(FILEN_EN).ps

enquick:
	-$(LX) $(TEXFLAGS) $(FILEN_EN)
	-$(DP) $(FILEN_EN)
	-$(PP) $(FILEN_EN).ps

debug:
	-$(LX) $(TEXFLAGSDBG) $(FILEN)
	-$(BX) $(FILEN)
	-$(LX) $(TEXFLAGSDBG) $(FILEN)
	-$(LX) $(TEXFLAGSDBG) $(FILEN)
	-$(DP) $(FILEN)
	-$(PP) $(FILEN).ps

dbq:
	-$(PX) $(TEXFLAGS) $(FILEN)

view:
	-$(AR) $(FILEN).pdf &

clean:
	-@$(RM) *.pdf
	-@$(RM) *~
	-@$(RM) *.aux
	-@$(RM) *.log
	-@$(RM) *.out
	-@$(RM) *.bbl
	-@$(RM) *.blg
	-@$(RM) *.toc
	-@$(RM) latexSuiteTemp*
	-@$(RM) *.dvi
	-@$(RM) *.ps
	-@$(RM) *.swp
	-@$(RM) *.lof
	-@$(RM) *.lot
	-@$(RM) *.idx
	-@$(RM) *.ilg
	-@$(RM) *.ind
	-@$(RM) *.nav
	-@$(RM) *.snm

cleanall:
	-@$(RM) *~
	-@$(RM) *.aux
	-@$(RM) *.log
	-@$(RM) *.out
	-@$(RM) *.bbl
	-@$(RM) *.blg
	-@$(RM) *.toc
	-@$(RM) latexSuiteTemp*
	-@$(RM) *.dvi
	-@$(RM) *.ps
	-@$(RM) *.pdf
	-@$(RM) *.swp
	-@$(RM) *.lof
	-@$(RM) *.lot
	-@$(RM) *.idx
	-@$(RM) *.ilg
	-@$(RM) *.ind
	-@$(RM) *.nav
	-@$(RM) *.snm
