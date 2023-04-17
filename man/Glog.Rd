\name{Glog}
\alias{Glog}
\title{Cumulative distribution function of bivariate logistic model}
\usage{
Glog(x,y,alpha) 
}
\arguments{
  \item{x}{X variable with Frechet scale}
  \item{y}{Y variable with Frechet scale}
  \item{alpha}{dependence parameter between X and Y variables}
}
\description{
  Glog is cumulative distribution function of bivariate logistic model
}
\details{

The bivariate logistic distribution function with parameter alpha is
 
       G(x,y)=exp(-[x^(-1/alpha)+y^(-1/alpha)]^(alpha))

where 0 < alpha <= 1. Complete dependence is obtained in the limit as alpha approaches zero. Independence is obtained when alpha = 1. 
Note that x and y are assumed to follow the Frechet distribution for easy demonstration, so that G(z)=exp(-1/z), where z=x or y. 
However, this implies no loss of generality of the characterization of the bivariate extreme value distribution, 
since any other marginal distributions, whose extremal properties are determined by the univariate characterizations (GEV or GPD), 
can always be transformed into the standard Frechet form.
}
\references{
Coles, S.G. (2001), An introduction to statistical modelling of extreme values, Springer, London.
}

\value{
Glog gives the distribution function value of x and y specified on a Frechet scale.
}