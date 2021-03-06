% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metadata_create.R
\name{metadata_create}
\alias{metadata_create}
\title{Create a metadata table}
\usage{
metadata_create(survey)
}
\arguments{
\item{survey}{A survey data frame.}
}
\value{
A nested data frame with metadata and the range of 
labels, na_values and the na_range itself.
}
\description{
Create a metadata table from the survey data files.
}
\details{
The structure of the returned tibble:
\describe{
  \item{filename}{The original file name; if present; \code{missing}, if a non-\code{\link{survey}} data frame is used as input \code{survey}.}
  \item{id}{The ID of the survey, if present; \code{missing}, if a non-\code{\link{survey}} data frame is used as input \code{survey}.}
  \item{var_name_orig}{The original variable name in SPSS.}
  \item{class_orig}{The original variable class after importing with\code{\link[haven]{read_spss}}.}
  \item{label_orig}{The original variable label in SPSS.}
  \item{labels}{A list of the value labels.}
  \item{valid_labels}{A list of the value labels that are not marked as missing values.}
  \item{na_labels}{A list of the value labels that refer to user-defined missing values.}
  \item{na_range}{An optional range of a continuous missing range, if present in the vector.}
  \item{n_labels}{Number of categories or unique levels, which may be different from the sum of missing and category labels.}
  \item{n_valid_labels}{Number of categories in the non-missing range.}
  \item{n_na_labels}{Number of categories of the variable, should be the sum of the former two.}
  \item{na_levels}{A list of the user-defined missing values.}
}
}
\examples{
metadata_create (
 survey = read_rds (
          system.file("examples", "ZA7576.rds",
                      package = "retroharmonize")
          )
)
}
