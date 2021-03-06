% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{ucred_fv}
\alias{ucred_fv}
\title{UCR ED Algorithm file-vector method}
\usage{
ucred_fv(data, query)
}
\arguments{
\item{data}{character; path to data file}

\item{query}{numeric vector containing query}
}
\value{
a ucred object. A list with the following elements
\itemize{
  \item \strong{location:} The starting location of the nearest neighbor of the given query, of size \code{length(query)}, in the data. Note that location starts from 1.
  \item \strong{distance:} The Euclidean Distance between the nearest neighbor and the query.
}
}
\description{
Sliding-window similarity search using Euclidean Distance. This implementation of the UCR Suite command line utility, takes a data file as input and an R numeric vector for the query.
}
\examples{
#locate example data file
dataf <- system.file("extdata/col_sc.txt", package="rucrdtw")
#read example query file into vector
query <- scan(system.file("extdata/mid_sc.txt", package="rucrdtw"))
#run query
ucred_fv(dataf, query)
}
