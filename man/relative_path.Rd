% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paths.R
\name{relative_path}
\alias{relative_path}
\title{Get the relative path of a path relative to a directory}
\usage{
relative_path(x, dir = ".", use.. = TRUE, error = TRUE)
}
\arguments{
\item{x}{A vector of paths to be converted to relative paths.}

\item{dir}{Path to a directory.}

\item{use..}{Whether to use double-dots (\file{..}) in the relative path. A
double-dot indicates the parent directory (starting from the directory
provided by the \code{dir} argument).}

\item{error}{Whether to signal an error if a path cannot be converted to a
relative path.}
}
\value{
A vector of relative paths if the conversion succeeded; otherwise the
original paths when \code{error = FALSE}, and an error when \code{error = TRUE}.
}
\description{
Given a directory, return the relative path that is relative to this
directory. For example, the path \file{foo/bar.txt} relative to the directory
\file{foo/} is \file{bar.txt}, and the path \file{/a/b/c.txt} relative to
\file{/d/e/} is \file{../../a/b/c.txt}.
}
\examples{
xfun::relative_path("foo/bar.txt", "foo/")
xfun::relative_path("foo/bar/a.txt", "foo/haha/")
xfun::relative_path(getwd())
}
