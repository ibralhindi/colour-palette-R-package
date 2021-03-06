% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discrete-scale.R
\name{scale_colour_ibrrra_d}
\alias{scale_colour_ibrrra_d}
\alias{scale_fill_ibrrra_d}
\title{Discrete Ibrrra Color and Fill Scales for ggplot2}
\usage{
scale_colour_ibrrra_d(direction = 1, ...)

scale_fill_ibrrra_d(direction = 1, ...)
}
\arguments{
\item{direction}{Sets the order of colors in the scale. If 1, the colors are ordered according to the default. If -1, the order of colors is reversed.}

\item{...}{arguments to be passed to ggplot2::discrete_scale}
}
\description{
Discrete color and fill scale functions to be used with ggplot2
}
\examples{
scale_colour_ibrrra_d()
scale_colour_ibrrra_d(direction = -1)
scale_fill_ibrrra_d()
scale_fill_ibrrra_d(direction = -1)

}
