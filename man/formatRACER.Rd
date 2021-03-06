% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formatRACER.R
\name{formatRACER}
\alias{formatRACER}
\title{Formating Data for Regional Association ComparER}
\usage{
formatRACER(assoc_data, chr_col, pos_col, p_col = NULL,
  log10p_col = NULL, ld_col = NULL, rs_col = NULL)
}
\arguments{
\item{assoc_data}{required. A dataframe that has columns containing the chromosome, physical position, and p-values or -log10(p-values) of the association, and can optionally have columns containing R2 information for LD in the region, or rsID numbers for the associated SNPs.}

\item{chr_col}{required. numeric. index of column in assoc_data containing chromosome information.}

\item{pos_col}{required. numeric. index of column in assoc_data containing genomic position information.}

\item{p_col}{required, if no log10p_col column specified. numeric. index of column in assoc_data containing p-values.}

\item{log10p_col}{required, if no p_col specified. numeric. index of column in assoc_data containing -log10(p-value)s.}

\item{ld_col}{optional. numeric. Required if you want to use the LD data in your data set in your plot, index of column in assoc_data containing LD information, e.g. R2 or D' values}

\item{rs_col}{optional. numeric. Required if you want to use the use ldRACER to pull LD information from the 1000 genomes phase III project, or if you want to make a scatter comparison plot}
}
\description{
This group of functions allows you to creat a plot of -log10(P-values) of an association study by their genomic position, for example, the results of a GWAS or eQTL study. This function carries out the formatting necessary for your association data to be compatible with the plotting functions.
}
\examples{
\dontrun{
data(mark3_bmd_gwas)
head(formatRACER(assoc_data = mark3_bmd_gwas, chr_col = 3, pos_col = 4, p_col = 11, rs_col = 2))}
}
\concept{GWAS}
\keyword{association}
\keyword{disequilibrium}
\keyword{linkage}
\keyword{plot}
