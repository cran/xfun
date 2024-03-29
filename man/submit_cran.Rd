% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cran.R
\name{submit_cran}
\alias{submit_cran}
\title{Submit a source package to CRAN}
\usage{
submit_cran(file = pkg_build(), comment = "")
}
\arguments{
\item{file}{The path to the source package tarball. By default, the current
working directory is treated as the package root directory, and
automatically built into a tarball, which is deleted after submission. This
means you should run \code{xfun::submit_cran()} in the root directory of a
package project, unless you want to pass a path explicitly to the
\code{file} argument.}

\item{comment}{Submission comments for CRAN. By default, if a file
\file{cran-comments.md} exists, its content will be read and used as the
comment.}
}
\description{
Build a source package and submit it to CRAN with the \pkg{curl} package.
}
\seealso{
\code{devtools::submit_cran()} does the same job, with a few more
dependencies in addition to \pkg{curl} (such as \pkg{cli});
\code{xfun::submit_cran()} only depends on \pkg{curl}.
}
