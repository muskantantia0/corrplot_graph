#
library(corrplot)
setwd("~/Downloads")
spwork <- corr_file
str(spwork)
rownames(spwork) <- spwork[,1]
spwork = spwork[,-1]
colnames(spwork) = rownames(spwork)
str(spwork)
spwork_matrix <- as.matrix(spwork)


png(height=1600, width=1600, pointsize=15, file="corrplot1.png")
corrplot(spwork_matrix,order ="hclust",method = "number",tl.cex = 0.5, tl.offset = 0.5)


png(height=1200, width=1500, pointsize=15, file="corrplot2.png")
corrplot(spwork_matrix, method = "color", addCoef.col="grey", order = "AOE")


png(height=2000, width=4000, pointsize=15, file="corrplot3.png")
corrplot(spwork_matrix, insig = "blank", method = "color", addCoef.col="grey", 
         order = "AOE", tl.cex = 1/par("cex"),
         cl.cex = 1/par("cex"))

png(height=2000, width=4000, pointsize=20, file="corrplot4.png")
corrplot(spwork_matrix, insig = "blank", method = "color", addCoef.col="grey", 
         order = "AOE", tl.cex = 1/par("cex"),
         cl.cex = 1/par("cex"))

png(height=1600, width=1600, pointsize=15, file="orrplot5.png")
corrplot(spwork_matrix, shade.col=NA, tl.col="black",
         order="hclust", type = "upper", tl.srt=)
corrplot(spwork_matrix,add=TRUE, type="lower", method="number",
         order="AOE", diag=FALSE, tl.pos="n", cl.pos="n")


