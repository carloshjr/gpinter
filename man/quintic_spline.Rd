% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quintic-spline.R
\name{quintic_spline}
\alias{quintic_spline}
\title{Quintic spline function}
\usage{
quintic_spline(x, xk, yk, sk, ak)
}
\arguments{
\item{x}{A vector of values between \code{min(xk)} and \code{max(xk)},
at which the interpolation function is evaluated.}

\item{xk}{A vector of interpolation points.}

\item{yk}{A vector of values at each interpolation point.}

\item{sk}{A vector of slopes at each interpolation point.}

\item{ak}{A vector of second derivatives at each interpolation point.}
}
\value{
The values of the interpolation function at each point \code{x}.
}
\description{
Quintic spline interpolation function over several intervals.
}
\author{
Thomas Blanchet, Juliette Fournier, Thomas Piketty
}
