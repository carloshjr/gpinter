% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generalized-pareto-distribution.R
\name{gpd_top_mean}
\alias{gpd_top_mean}
\title{Truncated average function of the generalized Pareto distribution in
the top of the distribution.}
\usage{
gpd_top_mean(p, pn, mu, sigma, xi)
}
\arguments{
\item{p}{A value in [pn, 1]. The point at which to evaluate the function.}

\item{pn}{A value in [0, 1]. The point of the distribution at which the
GDP model starts.}

\item{mu}{The location parameter.}

\item{sigma}{The scale parameter.}

\item{xi}{The shape parameter.}
}
\value{
The value of the truncated average at \code{p}.
}
\description{
This function correspond to the truncated average of the
generalized Pareto distribution, but with some rescaling to model the
top of the distribution only.
}
\author{
Thomas Blanchet, Juliette Fournier, Thomas Piketty
}
