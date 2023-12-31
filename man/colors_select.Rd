% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colors.R
\name{colors_select}
\alias{colors_select}
\alias{rc_colors}
\alias{slr_colors}
\alias{ndr_colors}
\title{Helper to get colors from theme}
\usage{
colors_select(n, type = "default", theme_name = getOption("theme"))

rc_colors(n = 3, type = "default")

slr_colors(n = 9)

ndr_colors(n = 8, type = NULL)
}
\arguments{
\item{n}{number of colors}

\item{type}{one of
\code{NULL} for default
\code{"deep"}, for dark colors.
\code{"gyr"}, for scale green to yellow to red.
\code{"Paired"} for pairwise colors.}

\item{theme_name}{name of theme}
}
\value{
a vector with color codes (HEX)

vector with color codes

vector with color codes

vector with color codes
}
\description{
Helper to get colors from theme

Wrapper for RColorBrewer to get colors

Colors used by the SLR color pallette

NDR color palette
}
\examples{
colors_select(3, "default", "rc")
rc_colors(2)
slr_colors(2) # two colors (not yeallow and blue)
ndr_colors(2)
}
