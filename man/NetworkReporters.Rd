% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AbstractGraphReporter.R
\name{NetworkReporters}
\alias{NetworkReporters}
\title{Network Reporters for Packages}
\description{
\pkg{pkgnet} defines several package reporter R6 classes that model
    a particular network aspect of a package as a graph. These network
    reporter classes are extended from \code{AbstractGraphReporter}, which
    itself extends the \code{\link[=PackageReporters]{AbstractPackageReporter}}
    with graph-modeling-related functionality.

    This article describes the additional fields added by the
    \code{AbstractGraphReporter} class definition.
}
\section{Public Methods}{

\describe{
    \item{\code{calculate_default_measures()}}{
        \itemize{
            \item{Calculates the default node and network measures for this
               reporter.
            }
            \item{\bold{Returns:}}{
                \itemize{
                    \item{Self, invisibly.}
                }
            }
        }
    }
}
}

\section{Public Fields}{

\describe{
    \item{\bold{\code{nodes}}}{a data.table, containing information about
       the nodes of the network the reporter is analyzing. The \code{node}
       column acts the identifier. Read-only.
    }
    \item{\bold{\code{edges}}}{a data.table, containing information about
       the edge connections of the network the reporter is analyzing. Each
       row is one edge, and the columns \code{SOURCE} and \code{TARGET}
       specify the node identifiers. Read-only.
    }
    \item{\bold{\code{network_measures}}}{a list, containing any measures
       of the network calculated by the reporter. Read-only.
    }
    \item{\bold{\code{pkg_graph}}}{a graph model object. See \link{DirectedGraph}
       for additional documentation. Read-only.
    }
    \item{\bold{\code{graph_viz}}}{a graph visualization object. A
       \code{\link[visNetwork:visNetwork]{visNetwork::visNetwork}} object.
       Read-only.
    }
    \item{\bold{\code{layout_type}}}{a character string, the current layout
       type for the graph visualization. Can be assigned a new valid layout
       type value. Use use
       \code{grep("^layout_\\\\S", getNamespaceExports("igraph"), value = TRUE)}
       to see valid options.
    }
}
}

\keyword{internal}
