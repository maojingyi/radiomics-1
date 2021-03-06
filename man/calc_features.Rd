% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CalculateFeatures.R
\docType{methods}
\name{calc_features}
\alias{calc_features}
\alias{calc_features,matrix-method}
\alias{calc_features,glcm-method}
\alias{calc_features,glrlm-method}
\alias{calc_features,glszm-method}
\alias{calc_features,mglszm-method}
\title{Calculate texture and first order statistics.}
\usage{
calc_features(object, features = c())

\S4method{calc_features}{matrix}(object, features = c())

\S4method{calc_features}{glcm}(object, features = c())

\S4method{calc_features}{glrlm}(object, features = c())

\S4method{calc_features}{glszm}(object, features = c())

\S4method{calc_features}{mglszm}(object, features = c())
}
\arguments{
\item{object}{An object of class "matrix", "glcm", "glrlm", "glszm", or "mglszm"}

\item{features}{A vector containing the features the user wishes to calculate for a 
given matrix type.}
}
\value{
A data frame with a single observation. The columns of the dataframe 
  correspond to the calculated features.
}
\description{
\code{calc_features} Calculates features of given texture matrix. If a simple
matrix is given, will calculate first order features. If desired, user may input the
features they wish to calculate for a given matrix type by passing them as a vector
of strings to the \code{features} argument.
}
\details{
Lists of features available for each matrix type can be accessed through
\code{?first_order_features} \code{?glcm_features}, \code{?glrlm_features}, \code{?glszm_features}.

Matrices of class \code{mglszm} accept features belonging to the glszm.
}
\section{Methods (by class)}{
\itemize{
\item \code{matrix}: Calculate first order features of a numeric matrix

\item \code{glcm}: Calculate texture features of a glcm matrix

\item \code{glrlm}: Calculate texture features of a glrlm matrix

\item \code{glszm}: Calculate texture features of a glszm matrix

\item \code{mglszm}: Calculate texture features of an mglszm matrix
}}

\examples{
\dontrun{
calc_features(glcm(hallbey))
calc_features(glrlm(psf, n_grey=10))
calc_features(glcm(hallbey), features=c("glcm_mean", "glcm_variance", "pickles"))
}

}
\references{
\url{http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0102107}
}
\seealso{
\code{\link{glcm}}
  \code{\link{glrlm}}
  \code{\link{glszm}}
  \code{\link{mglszm}}
}
