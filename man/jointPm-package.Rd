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

\author{
 Feifei Zheng    \email{feifeizheng@zju.edu.cn},
 Michael Leonard \email{michael.leonard@adelaide.edu.au},
 Seth Westra     \email{seth.westra@adelaide.edu.au}
}
\references{
Zheng, F., S. Westra, and S. A. Sisson (2013), Quantifying the dependence between extreme rainfall and storm surge in the coastal zone, \emph{Journal of Hydrology}, 505(\bold{15}), 172–187, \doi{10.1016/j.jhydrol.2013.09.054}.

Zheng, F., Westra S. Sisson S. and Leonard M. (2014). Modelling dependence between extreme rainfall and storm surge to estimate coastal flood risk, \emph{Water Resources Research}, 50, pp. 2050–2071,\doi{10.1002/2013WR014616}

Zheng, F., Leonard M. and Westra S. (2015). Efficient joint probability analysis of flood risk, \emph{Journal of Hydroinformatics}, 17(4), pp. 584–597, \doi{10.2166/hydro.2015.052}.
}

\examples{
 library(jointPm)
 data(flood)
 px = flood$px;
 py = flood$py;
 z = flood$flood_table;
 prm = flood$prm;
 pout = flood$pout
 binteg(px, py, z, prm, pout,
    model = "log", prob = "ARI",
    nz = 100, ninc = 1000)
}

