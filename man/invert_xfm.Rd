% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_xfm.R
\name{invert_xfm}
\alias{invert_xfm}
\alias{concat_xfm}
\alias{fixscaleskew_xfm}
\title{Convert a Transformation}
\usage{
invert_xfm(inmat, omat = tempfile(fileext = ".mat"), verbose = TRUE)

concat_xfm(inmat, inmat2, omat = tempfile(fileext = ".mat"), verbose = TRUE)

fixscaleskew_xfm(
  inmat,
  inmat2,
  omat = tempfile(fileext = ".mat"),
  verbose = TRUE
)
}
\arguments{
\item{inmat}{input matrix transformation}

\item{omat}{output matrix transformation}

\item{verbose}{print diagnostic messages}

\item{inmat2}{second matrix filename to be concatenated or fixscaleskew
to first}
}
\value{
A filename of the output matrix file
}
\description{
Convert a Transformation
}
\examples{
if (have_fsl()) {
img = mni_fname()
mat = fslreorient2std_mat(img)
inverted = invert_xfm(mat)
readLines(inverted)
catted = concat_xfm(mat, mat)
readLines(catted)
fixed = fixscaleskew_xfm(mat, mat)
readLines(fixed)

}
}
