% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paths.R
\name{file_rename}
\alias{file_rename}
\title{Rename files and directories}
\usage{
file_rename(from, to)
}
\arguments{
\item{from, to}{Original and target paths, respectively.}
}
\value{
A logical vector (\code{TRUE} for success and \code{FALSE} for failure).
}
\description{
First try \code{\link[=file.rename]{file.rename()}}. If it fails (e.g., renaming a file from one volume
to another on disk is likely to fail), try \code{\link[=file.copy]{file.copy()}} instead, and clean
up the original files if the copy succeeds.
}
