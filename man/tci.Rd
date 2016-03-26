\name{tci}
\alias{tci}

\title{Total Cophenetic Index}
\description{Calculate the Total Cophenetic Index for any tree.}
\usage{
tci(tree)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tree}{a tree of class \code{\link{phylo}}}
}
\details{
  The Total Cophenetic Index is a measure of tree balance -
  i.e. whether a (phylogenetic) tree comprises symmetric pairs of nodes, or has a pectinate 
  'caterpillar' shape.   The index has a greater resolution power than Sackin's and Colless' indices,
  and can be applied to trees that are not perfectly resolved.
  Full details are provided by Mir et al (2013).
}
\value{
  Returns the Total Cophenetic Index, a measure of the balance of the tree.
}
\references{
A. Mir, F. Rossello, L. A. Rotger, \cite{A new balance index for phylogenetic trees.} Math. Biosci. 241, 125-136 (2013). <DOI:10.1016/j.mbs.2012.10.005>
}
\author{
Martin R. Smith
}

\seealso{
  The range of possible values for a tree with n tips, and the values expected under simple models of evolution, is provided by \code{\link{tci.context}(tree)}
}

\examples{
  tree12 <- ape::read.tree(text='(1, (2, (3, (4, 5))));')  #Fig. 4, tree 12
  tci(tree12) # 10
  tree8  <- ape::read.tree(text='((1, 2, 3, 4), 5);')      #Fig. 4, tree 8
  tci(tree8)  # 6
}