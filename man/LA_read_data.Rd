% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_data.R
\name{LA_read_data}
\alias{LA_read_data}
\title{Load a data set for a Little App}
\usage{
LA_read_data(data_name = "Health", package = "LittleApp")
}
\arguments{
\item{data_name:}{character string suitable for \code{load()}ing the data}

\item{package:}{character string naming the package where the .rda file exists}
}
\value{
An environment holding the components of "basic data"
}
\description{
Load a data set for a Little App
}
\details{
Ideally, basic data for Little Apps should consist of four components:
\enumerate{
\item \code{frame} - the data frame containing the data
\item \code{codebook} - a list containing a text description of each variable. The list names
should be the corresponding variable names in \code{frame}.
\item \code{overall} - a character string describing \code{frame} as a whole.
\item \code{types} - a data frame containing one row for each variable, as produce by \code{LA_var_types()}.
}

You can also use \code{LA_read_data()} to read an ordinary data frame, either as a \code{url}
or from a package. In this case, the four components will be constructed, but
\code{codebook} and \code{overall} will be uninformative.
}
\examples{
\dontrun{
LA_read_data("Health", package = "LittleApp")
}

}
