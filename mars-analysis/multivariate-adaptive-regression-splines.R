#install packages
install.packages("earth")
library(earth)

require("earth")

#open summary for dataset
summary(dataset)

#mars modelling
model<-earth(Status~., data=dataset, degree=2)

#summary model
summary(model, digits=3, style="pmax")
summary(model, digits=3, style="max")
summary(model, digits=3, style="bf")

#plot model
plotmo(model,nrug=-1)

#plot variable importance
plot(evimp(model),type.nsubsets="b",x.legend="topright",
      type.gcv="b",type.rss="b",col.gcv="blue")

#view variable importance
evimp(model, trim=TRUE, sqrt.=TRUE)
varImp<-evimp(model)

#summary variable importance
summary(varImp)

class(varImp) <- c(class(varImp),"matrix")
xvals<-seq_len(nrow(varImp))
varImp<-data.frame(varImp)
max.subsets<-varImp[1,"nsubsets"]
op <-par(mar=c(7.5,4,2,4)+0.1)

#plotting
plot(nsubsets~xvals, data=varImp, type="n",
     ylim=c(0,max.subsets),axes=FALSE,ann=FALSE)
#grid
grid() 

#lines
lines(nsubsets~xvals,data=varImp, type="b", pch=21,
      col="red",bg="red",lty="dashed")
lines(max.subsets * rss/100 ~ xvals, data = varImp, type = "b", pch = 21,
      col = "blue", bg = "blue", lty = "solid")
lines(max.subsets * gcv/100 ~ xvals, data = varImp, type = "b", pch = 21,
      col = "green", bg = "green", lty = "solid")
axis(side=2,at=0:8, las=2)

#name of variable (x)
labs <- c("Power", "Zinc", "Vitamin A", "Fat")
labs <- paste(labs, varImp$col, sep = " - ")

#axis
axis(side = 1, at = xvals, labels = labs, las = 3)
axis(side = 4, at = seq(0, 1, by = 0.2) * max.subsets,
     labels = seq(0, 100, by = 20), las = 2)
box() #lines for box

#title for y
title(ylab = "Number of subsets")
mtext(side = 4, srt = 0, text = "Relative GCV or RSS", line = 2.8,
      cex = par("cex.axis"))

#description
legend("topright", legend = c("N subsets", "RSS", "GCV"),
       pch = 21, pt.bg = c("red","blue","green"),
       lty = c("dashed", rep("solid", 2)),
       bty = "n")
par(op)

#code and compiled by afifadayu