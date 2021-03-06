% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aux_funs.R
\name{obs_length}
\alias{obs_length}
\title{Retrieve number of observations}
\usage{
obs_length(mat)
}
\arguments{
\item{mat}{A \code{(K x N)} matrix, with \code{K} being the number of variables and \code{N}
the sample size.}
}
\value{
An integer scalar. The sample size \code{N}.
}
\description{
Given a matrix of observations or residuals, retrieve the number of sample
observations.
}
\details{
At the moment, this function is just an intentionally named wrapper of
\code{ncol(mat)}.
}
\examples{
K <- 4
N <- 1E3

obs_length(matrix(0, K, N)) == N

\dontrun{

obs_length(1:K)
}
}
