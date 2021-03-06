% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aux_funs.R
\name{dm_index}
\alias{dm_index}
\title{Indices of a duplication matrix}
\usage{
dm_index(K)
}
\arguments{
\item{K}{An integer scalar. The number of variables of the VAR(p) system.}
}
\value{
An integer matrix of dimension 2 x K^2.  The first columns
corresponds to the row index, the second column to the column index.
}
\description{
Create a matrix containing row and column indices of a duplication matrix.
These indices specify where the duplication matrix carries ones.
}
\details{
It is a helper function for \code{\link{duplication_matrix}}.
}
