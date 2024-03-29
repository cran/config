% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/active.R
\name{is_active}
\alias{is_active}
\title{Test active configuration.}
\usage{
is_active(config)
}
\arguments{
\item{config}{Configuration name}
}
\value{
Logical indicating whether the specified configuration is active
}
\description{
Check whether a configuration is currently active.
}
\details{
The name of the currently active configuration is read from the
\code{R_CONFIG_ACTIVE} environment variable. If the variable is not defined then
the "default" configuration is used.

To test for whether a configuration is active you should use the
\code{\link[=is_active]{is_active()}} function rather than inspecting the environment variable
directly (this is to so that tests remain valid if other means of specifying
configurations are introduced in the future).
}
\seealso{
\code{\link[=get]{get()}}
}
