library('png')
library('ggplot2')
nflstats = read.table('combined.tsv',sep="\t",header=TRUE)
plot(nflstats$Pts.G,nflstats$Yds.G,ann=FALSE)
title(main="NFL Defenses (Regular Season)",
xlab="Points Allowed Per Game",
ylab="Yards Allowed Per Game"
)

plotsize = par("usr")
plotunits = c((plotsize[2]-plotsize[1]),(plotsize[4]-plotsize[3]))
aspect = par("pin")/plotunits
aspectratio = aspect[1]/aspect[2]
xyscale = c(1/aspectratio,1)
shrink = 150
for(ii in 1:32) {
  logo = readPNG(paste(sep="",'logos/',nflstats$Team[ii],'.png'))
  dims = dim(logo)[1:2]/xyscale/shrink
  rasterImage(
    logo,
    nflstats$Pts.G[ii]-dims[2]/2,
    nflstats$Yds.G[ii]-dims[1]/2,
    nflstats$Pts.G[ii]+dims[2]/2,
    nflstats$Yds.G[ii]+dims[1]/2,
  )
}