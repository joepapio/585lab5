% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FARSday.R
\name{FARSday}
\alias{FARSday}
\title{Plot the number of accidents against hours for drunk driver and not drunk driver group separately}
\usage{
FARSday(data, day)
}
\arguments{
\item{data}{accData data set .}

\item{day}{A number from 1 to 7.}
}
\value{
A figure of number of accidents against hours in day \code{y}.
}
\description{
Plot the number of accidents against hours for drunk driver and not drunk driver group separately
}
\examples{
FARSday(accData, 2)
FARSday(accData, 7)
}
