% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distribution-functions.R
\name{fitted_quantile}
\alias{fitted_quantile}
\title{Quantile function for generalized Pareto interpolation}
\usage{
fitted_quantile(dist, probs, ...)
}
\arguments{
\item{dist}{An object of class \code{gpinter_dist_orig}, \code{gpinter_dist_indiv},
\code{gpinter_dist_addup} or \code{gpinter_dist_merge}.}

\item{probs}{A vector of probabilities in [0, 1].}

\item{...}{Ignored.}
}
\description{
Compute the value of the quantile estimated via generalized
Pareto interpolation, for any value in [0, 1].
}
\author{
Thomas Blanchet, Juliette Fournier, Thomas Piketty
}
