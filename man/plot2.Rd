\name{plot2}
\alias{plot2}
\title{a plot showing response variable levels versus return probabilities (ARI/AEP)}
\usage{
plot2(obj,prob)
}
\arguments{
  \item{obj}{is the output object from the binteg function.}
  \item{prob}{is how the axes show the return probability, either ARI (annual recurrence interval) or annual exceed probability (AEP).}
}
\description{
  plot2 shows the univariate response variable levels versus return probabilities (ARI/AEP).
}

\details{
 This figure include response variable levels estimated using the observed dependence, complete dependence (alpha=0) and complete independence (alpha=1) cases.
}
\references{
Zheng, F., Leonard M. and Westra S. (2014b). An efficient bivariate integration method for joint probability analysis of flood risk, Water Resources Research, under review.
}

\examples{
 library(jointPm)
 data(flood)
 px=flood$px;py=flood$py;z=flood$flood_table;prm=flood$prm;pout=flood$pout
 result=binteg(px,py,z,prm,pout,model="log",prob="ARI",nz=100,ninc=1000)
 plot2(result,prob="ARI")
}