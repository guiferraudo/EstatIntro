require(tools)
setwd("C:/Users/guilherme.ferraudo/Documents/CursoStat")
Sweave("lista_distr_cont.Rnw")
dev.off()
texi2dvi("lista_distr_cont.tex", pdf = T)

