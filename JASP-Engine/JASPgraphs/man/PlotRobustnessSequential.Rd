% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotRobustnessSequential.R
\name{PlotRobustnessSequential}
\alias{PlotRobustnessSequential}
\title{Create a robustness or sequential plot}
\usage{
PlotRobustnessSequential(dfLines, dfPoints = NULL, BF01 = NULL,
  hasRightAxis = TRUE, xName = NULL, yName = bfSubscripts,
  addEvidenceArrowText = TRUE, drawPizzaTxt = !is.null(BF01),
  evidenceLeveltxt = !is.null(BF01), pointLegend = !is.null(dfPoints),
  linesLegend = !is.null(dfLines$g), bfSubscripts = "BF[0][1]",
  pizzaTxt = pizzaTxtFromBF(bfSubscripts), pointColors = c("grey",
  "white", "black", "red"), lineColors = c("black", "grey", "black"),
  lineTypes = c("dotted", "solid", "solid"), addLineAtOne = TRUE,
  bty = list(type = "n", ldwX = 0.5, lwdY = 0.5), ...)
}
\arguments{
\item{dfLines}{A dataframe with \code{$x}, \code{$y}, and optionally \code{$g}.}

\item{dfPoints}{A dataframe with \code{$x}, \code{$y}, and optionally \code{$g}.}

\item{BF01}{Numeric, with value of Bayes factor.}

\item{hasRightAxis}{Logical, should there be a right axis displaying evidence?}

\item{xName}{String or expression, displayed on the x-axis.}

\item{yName}{String or expression, displayed on the y-axis.}

\item{addEvidenceArrowText}{Logical, should arrows indicating "Evidence for H0/H1" be drawn?}

\item{drawPizzaTxt}{Logical, should there be text above and below the pizza plot?}

\item{evidenceLeveltxt}{Logical, should "Evidence for H0: extreme" be drawn?
Ignored if \code{!is.null(dfLines$g) && linesLegend}.}

\item{pointLegend}{Logical, should a legend of \code{dfPoints$g} be shown?}

\item{linesLegend}{Logical, should a legend of \code{dfLines$g} be shown?}

\item{bfSubscripts}{String, to be parsed as expression. Indicates what BF type to display.}

\item{pizzaTxt}{String vector of length 2, text to be drawn above and below pizza plot.}

\item{pointColors}{String vector, colors for points if \code{dfPoints$g} is not \code{NULL}.}

\item{lineColors}{String vector, colors for lines if \code{dfLines$g} is not \code{NULL}.}

\item{lineTypes}{String vector, line types if \code{dfLines$g} is not \code{NULL}.}

\item{addLineAtOne}{Logical, should a black line be draw at BF = 1?}

\item{bty}{List of three elements. Type specifies the box type, ldwX the width of the x-axis, lwdY the width of the y-axis.}

\item{...}{Unused.}
}
\description{
Create a robustness or sequential plot
}
