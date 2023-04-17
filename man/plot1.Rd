\name{plot1}
\alias{plot1}
\title{shows the bivariate intergration}
\usage{
plot1(obj,prob)
}
\arguments{
  \item{obj}{is the output object from the binteg function.}
  \item{prob}{is how the axes show the return probability, either ARI (annual recurrence interval) or annual exceed probability (AEP).}
}
\description{
   This figure shows the contours of the response variable (e.g. flood levels) interpolated from input z and the joint contours of the bivariate density of two forcing variables.
}
\details{
   plot1 is the plot overlaying the response variable's contours and the joint probability contours. 
   The exceedance probability for a particular response level is obtained by integrating the joint density 
   for the region above this specified response level. This can be repeated for a range of different response variable levels, 
   and the response variable corresponding to a specific exceedance probability can be found by subsequent interpolation. 
}
\references{
 Zheng, F., S. Westra, and S. A. Sisson (2013), Quantifying the dependence between extreme rainfall and storm surge in the coastal zone, Journal of Hydrology, 505(0), 172-187.\cr

 Zheng, F., Leonard M. and Westra S. (2014b). An efficient bivariate integration method for joint probability analysis of flood risk, Water Resources Research, under review.
}

\examples{
 library(jointPm)
 data(flood)
 px=flood$px;py=flood$py;z=flood$flood_table;prm=flood$prm;pout=flood$pout
 result=binteg(px,py,z,prm,pout,model="log",prob="ARI",nz=100,ninc=1000)
 plot1(result,prob="ARI")
}