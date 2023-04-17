\name{flood}
\alias{flood}
\docType{data}
\title{Example data of flood levels and dependence strength between extreme rainfall and extreme storm tides from a coastal catchment}
\description{
  "flood_table" is a matrix of flood levels with 100 different combinations of the rainfall and storm tides in terms of ARIs.\cr
  "px" are ARIs of X variable associated with rows (rainfall).\cr
  "py" are ARIs of Y variable associated with columns (storm tides).\cr
  "pout" are ARIs for which flood levels are estimated with incorporation of joint dependence between extreme rainfall and storm tides.\cr
  "prm" is the dependence parameter for the logistic model.
}
\usage{
data(flood)
}
\details{
  For the low bounds of the marginal dsitributions, the lowest astronomical tide and no rainfall are used and ARI=0/AEP=1.
}
\references{
   Zheng, F., Leonard M. and Westra S. (2014b). An efficient bivariate integration method for joint probability analysis of flood risk, Water Resources Research, under review.
}

\examples{
 library(jointPm)
 data(flood)
}