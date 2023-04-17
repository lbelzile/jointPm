\name{binteg}
\alias{binteg}
\title{bivariate integration}
\usage{
binteg(px,py,z,prm,pout,model="log",prob="AEP",nz=100,ninc=1000)
}
\arguments{
  \item{px}{are marginal probabilities (ARIs/AEPs) of X forcing variable associated with rows of z (e.g. rainfall).}
  \item{py}{are marginal probabilities (ARIs/AEPs) of Y forcing variable associated with columns of z (e.g. storm tides).}
  \item{z}{is a table of response variable values (e.g., flood levels) for each (x,y) combination.}
  \item{prm}{is the parameter for the model being used.}
  \item{pout}{are probabilities (ARIs/AEPs) for which output response variable levels are desired}
  \item{model}{is the model used, either logistic model ("log", default) or negative logsitic model ("neglog").}
  \item{prob}{is the manner in which probabilities are specified, either ARI (annual recurrence interval) or annual exceed probability (AEP). See Details}
  \item{nz}{is the number of response variable contours to be considered across the range of z table.}
  \item{ninc}{is the number of integration increments for each piecewise section of response variable contour lines.}
}
\description{
  An efficient approach for bivariate integration.
}

\details{

 This package is illustrated for the example of coastal flood levels (the response variable) forced by extreme rainfall (x) and extreme storm tides (y). 
 For this problem, the low bounds of the marginal distributions, i.e. no rainfall (x) and a suitable tide level (such as mean sea level or the lowest astronomical tide) are denoted as ARI=0/AEP=1. 
 "binteg" estimates the flood risk allows for joint dependence between the extreme values of two forcing variables (rainfall and storm tides). 
 Here the logistic and negative logistic model are used to model dependence due to their simplicity and great ability (see Zheng et al. 2014a). 
 The results from "binteg" also include estimates for the cases of complete dependence (alpha=0) and independence (alpha=1) to enable a comparison with the observed dependence strength.

 An issue in the use of the proposed integral method is when the response variable table (e.g.flood level table) does not encapsulate the entirety of the boundary function.
 This can be seen from the example of this package whenever a flood contour intersects the upper or right-hand bound (as with contours 1.8m and higher that intersect the upper bound of the figure). 
 In order to address this issue, return probabilities of two alternate cases are computed. Taking the h=2 m in (use "plot2" to generate the figure) for illustration, 
 the first case is to project the red contour line (h=2 m) horizontally back to the y axis at the storm tide intersection ARI=500. This caps the largest storm tide at ARI=500, 
 which will result in an overestimate of the return probability. The second case is to extend the red contour line (h=2 m) vertically to infinity, i.e., assuming the largest flood level 
 produced by the storm tides is h=2 m, even if the storm tide ARI tends to infinity . For this case, the return probability is underestimated. 
 Using this approach, the two cases which give over and under estimates are respectively shown different flood levels (see the figure provided by "plot2"). 
 For the given ARIs/AEPs, if the differences of the flood levels from the two cases are insignificant, the provided response variable table is sufficient for estimation. 
 Otherwise a  more extended table with larger marginal ARIs/AEPs is required.
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
\value{
 Returns a list of results
 \item{p.aep}{are the AEPs that are onsidered}
 \item{p.ari}{are the ARIs that are considered}
 \item{zout}{are response variable estimates using the observed dependence, complete dependence and independence, see Details}
 \item{px}{are given ARIs/AEPs of X variable associated with rows (reproduced from inputs).}
 \item{py}{are given ARIs/AEPs of Y variable associated  with columns (reproduced from inputs).}
 \item{z}{is the given table of response variable values (reproduced from inputs).}
 \item{prm}{is the given parameter (reproduced from inputs).}
 \item{model}{is the specified model, either logistic model (default) or negative logsitic model (reproduced from inputs).}
 \item{prob}{is the specified format of probablity, ARI or AEP (reproduced from inputs).}
}
\examples{
 library(jointPm)
 data(flood)
 px=flood$px;py=flood$py;z=flood$flood_table;prm=flood$prm;pout=flood$pout
 binteg(px,py,z,prm,pout,model="log",prob="ARI",nz=100,ninc=1000)
}