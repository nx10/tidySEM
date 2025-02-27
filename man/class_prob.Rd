% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mixture_summaries.R
\name{class_prob}
\alias{class_prob}
\title{Obtain latent class probabilities}
\usage{
class_prob(
  x,
  type = c("sum.posterior", "sum.mostlikely", "mostlikely.class", "avg.mostlikely",
    "individual"),
  ...
)
}
\arguments{
\item{x}{An object for which a method exists.}

\item{type}{Character vector, indicating which types of probabilities to
extract. See Details.}

\item{...}{Further arguments to be passed to or from other methods.}
}
\value{
A data.frame.
}
\description{
Obtain latent class probabilities for an object for which a
method exists. See Details.
}
\details{
The following types are available:
\itemize{
 \item{"sum.posterior"}{A summary table of the posterior class
 probabilities; this indicates what proportion of your data contributes to
 each class.}
 \item{"sum.mostlikely"}{A summary table of the most likely class
 membership, based on the highest posterior class probability. Note that
 this is subject to measurement error.}
 \item{"mostlikely.class"}{If C is the true class of an observation, and N is
 the most likely class based on the model, then this table shows the
 probability P(N==i|C==j). The diagonal represents the probability that
 observations in each class will be correctly classified.}
 \item{"avg.mostlikely"}{Average posterior probabilities for each class, for
 the subset of observations with most likely class of 1:k, where k is the
 number of classes.}
 \item{"individual"}{The posterior probability matrix, with dimensions n
 (number of cases in the data) x k (number of classes).}
}
}
\examples{
\dontrun{
df <- iris[, 1, drop = FALSE]
names(df) <- "x"
res <- mx_mixture(model = "x ~ m{C}*1
                           x ~~ v{C}*x", classes = 1, data = df)
class_prob(res)
}
}
