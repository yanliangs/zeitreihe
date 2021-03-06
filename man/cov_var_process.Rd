% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aux_funs.R
\name{cov_var_process}
\alias{cov_var_process}
\title{Compute the Covariance Matrix of a VAR(p) Process}
\usage{
cov_var_process(A, SIGMA, h = 0, tol = 1e-07)
}
\arguments{
\item{A}{A \code{(K x Kp)} matrix, providing the coeffcients for lag \code{1} to \code{p}
with the first row containing the coefficents of the first equation.
Parameter \code{p} is the maximum lag length and \code{K} the number of variables.}

\item{SIGMA}{A \code{(K x K)} matrix of covariances. The covariance matrix of the
residuals \code{U}.}

\item{h}{An integer scalar, the horizon at which to compute the
covariances. Defaults to the contemporaneous covariances of \code{y_t}.}

\item{tol}{A numeric scalar, the tolerance level for stopping the
computation. See Details.}
}
\value{
A \code{(K x K)} numeric matrix. It containes the covariances of \code{y_t} and
\code{y_{t+h}}.
}
\description{
Compute the unconditional covariance matrix of the observations
\code{y_t}.
}
\details{
Computing the covariance matrix invloves an infinite sum. Computation is
stopped if the summed differences of the elements of two iterations of the
covariance matrix is less than the tolerance level \code{tol}.
}
\section{Implementation}{
 Plain brute force with no regard for
efficiency.
}

\examples{
K <- 4
p <- 2

A <- matrix(0.0, K, K * p)
SIGMA <- matrix(0.5, K, K)
cov_var_process(A, SIGMA)

A <- matrix(-0.2, K, K * p); diag(A) <- 1:K / 10
cov_var_process(A, SIGMA)
cov_var_process(A, SIGMA, h = 5)
cov_var_process(A, SIGMA, h = 150)
}
