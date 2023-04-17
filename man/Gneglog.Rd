\name{Gneglog}
\alias{Gneglog}
\title{Cumulative distribution function of bivariate negative logistic model}
\usage{
Gneglog(x,y,alpha) 
}
\arguments{
  \item{x}{X variable with Frechet scale}
  \item{y}{Y variable with Frechet scale}
  \item{alpha}{dependence parameter between X and Y variables}
}
\description{
  Gneglog is the cumulative distribution function of bivariate negative logistic model
}

\details{

The bivariate negative logistic distribution function with parameter alpha is

           G(x,y)=exp(-1/x-1/y-[x^(1/alpha)+y^(1/alpha)]^(-1/alpha))

where alpha >0. Independence is obtained in the limit as alpha approaches zero. Complete dependence is obtained as alpha tends to infinity 
Note that x and y follow the Frechet distribution, so that G(z)=exp(-1/z), where z=x or y. However, this implies no loss of generality of the characterization of the bivariate extreme value distribution, 
since any other marginal distributions, whose extremal properties are determined by the univariate characterizations (GEV or GPD), can always be transformed into the standard Frechet form.
}
\references{
Coles, S.G. (2001), An introduction to statistical modelling of extreme values, Springer, London.
}

\value{
Gneglog gives the distribution function value of x and y specified on a Frechet scale.
}
