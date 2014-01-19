library('png')
library('ggplot2')
read.table('stats.tsv',sep="\t",header=TRUE)
plot(nflstats$Pts.G,nflstats$Yds.G,ann=FALSE)
title(main="NFL Defenses (Regular Season)",
xlab="Points Allowed Per Game",
ylab="Yards Allowed Per Game"
)

xyscale = par("cxy")
scale = 30
for(ii in 1:32) {
  logo =readPNG(paste(sep="",'logos/',nflstats$Team[ii],'.png'))
  dims = dim(logo)[1:2]/xyscale/scale
  rasterImage(
    logo,
    nflstats$Pts.G[ii]-dims[2]/2,
    nflstats$Yds.G[ii]-dims[1]/2,
    nflstats$Pts.G[ii]+dims[2]/2,
    nflstats$Yds.G[ii]+dims[1]/2,
  )
}