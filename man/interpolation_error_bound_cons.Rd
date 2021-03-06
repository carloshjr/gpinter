% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interpolation-error.R
\name{interpolation_error_bound_cons}
\alias{interpolation_error_bound_cons}
\alias{interpolation_value_error_bound_cons}
\alias{interpolation_deriv_error_bound_cons}
\title{Bound on the interpolation error for a constant phi'''}
\usage{
interpolation_value_error_bound_cons(x, xk, norm_deriv3)
}
\arguments{
\item{x}{A vector of points at which to estimate the error.}

\item{xk}{The position of the interpolation points.}

\item{norm_deriv3}{The infinite norm of the third derivative of the
interpolated function.}
}
\value{
The bound for each value of \code{x}.
}
\description{
Give an absolute bound on the error of the interpolation and
its derivative, given the supremum of the third derivative of the
interpolated function.
}
\author{
Thomas Blanchet, Juliette Fournier, Thomas Piketty
}
