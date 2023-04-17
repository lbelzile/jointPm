\name{jointPm-package}
\alias{jointPm-package}
\alias{jointPm}
\docType{package}
\title{
   Risk estimation using the joint probability method ('jointPm')
}
\description{
 The overall impact of climate and weather related events such as flooding, wildfires and cyclones is determined by the interaction of many processes acting together.
 For example, coastal floods may be caused by coincident extreme rainfall and extreme storm tides, floods in confluence regions may depend on simultaneously large flows 
 from two or more tributaries. It is challenging to perform the joint probability analysis of flood risk with multiple forcing variables, because the return period of forcing processes is not
 directly equivalent to the return period of floods. This package uses a bivariate integration approach to efficiently estimate risk by accounting for two forcing variables at extreme levels.
}
\details{
  \tabular{ll}{ Package: \tab jointPm\cr Type: \tab
  Package\cr Version: \tab 2.3.1\cr Date: \tab 2014-01-10\cr
  License: \tab GPL (>= 2)\cr LazyLoad: \tab yes\cr}
}
\author{
 Feifei Zheng    \email{feifei.zheng@adelaide.edu.au},
 Michael Leonard \email{michael.leonard@adelaide.edu.au},
 Seth Westra     \email{seth.westra@adelaide.edu.au}
}
\references{
Zheng, F., S. Westra, and S. A. Sisson (2013), Quantifying the dependence between extreme rainfall and storm surge in the coastal zone, Journal of Hydrology, 505(0), 172-187.\cr

Zheng, F., Westra S. Sisson S. and Leonard M. (2014a). Modelling the dependence between extreme rainfall and storm surge to estimate coastal flood risk, Water Resources Research, under review.\cr

Zheng, F., Leonard M. and Westra S. (2014b). An efficient bivariate integration method for joint probability analysis of flood risk, Water Resources Research, under review.
}
\keyword{ 
  joint probability method, risk estimation, bivariate integration.
}

\examples{
 library(jointPm)
 data(flood)
 px=flood$px;py=flood$py;z=flood$flood_table;prm=flood$prm;pout=flood$pout
 binteg(px,py,z,prm,pout,model="log",prob="ARI",nz=100,ninc=1000)
}

