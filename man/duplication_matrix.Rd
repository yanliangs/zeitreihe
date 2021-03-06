% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aux_funs.R
\name{duplication_matrix}
\alias{duplication_matrix}
\title{Duplication Matrix \code{D}}
\usage{
duplication_matrix(K)
}
\arguments{
\item{K}{An integer scalar. The number of variables of the VAR(p) system.}
}
\value{
A \code{(K^2 x [K^2 + K]/2)} selection matrix containing ones and zeros.
When multiplied with a vector, it will select entries of that vector to be
duplicated.
}
\description{
Create a duplication matrix for duplicating entries of a vector. This is
particularly useful for converting a vector \code{vech(M)} to a vector \code{vec(M)},
where \code{M} is a symmetric matrix. See \code{\link[=vec]{vec()}} and \code{\link[=vech]{vech()}} and the example
below.
}
\examples{
K <- 6

AA <- matrix(1:K^2, K, K)
AA[upper.tri(AA)] <- t(AA)[upper.tri(AA)]

AA

all(vec(AA) == duplication_matrix(K) \%*\% vech(AA))
}
