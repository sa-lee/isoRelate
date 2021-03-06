% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_ibd_segments.R
\name{getIBDsegments}
\alias{getIBDsegments}
\title{IBD Segment Detection}
\usage{
getIBDsegments(ped.genotypes, parameters, number.cores = 1,
  minimum.snps = 20, minimum.length.bp = 50000, error = 0.001)
}
\arguments{
\item{ped.genotypes}{A list containing 2 objects.
See the \code{Value} description in \code{\link{getGenotypes}} for more details on this input.}

\item{parameters}{A data frame containing meioses and IBD probability estimates for all pairwise combinations of isolates.
See the \code{Value} description in \code{\link{getIBDparameters}} for more details on this input.}

\item{number.cores}{Positive integer. The number of cores used for parallel execution.}

\item{minimum.snps}{An integer value denoting the minimum number of SNPs in an IBD segment for it to be reported.
The default value is 20 SNPs.}

\item{minimum.length.bp}{The minimum length of a reported IBD segment. The default value is 50,000 bp.}

\item{error}{The genotyping error rate. The default value is 0.001.}
}
\value{
A data frame with the following columns
 \enumerate{
\item Family 1 ID
\item Isolate 1 ID
\item Family 2 ID
\item Isolate 2 ID
\item Chromosome
\item Start SNP
\item End SNP
\item Start position bp
\item End position bp
\item Start position M
\item End position M
\item Number of SNPs
\item Length bp
\item Length M
\item IBD status (1 = one allele shared IBD, 2 = two alleles shared IBD)
}
where each row describes a unique IBD segment. The data frame is headed \code{fid1, iid1, fid2, iid2, chr, start_snp, end_snp,
start_position_bp, end_position_bp, start_position_M, end_position_M, number_snps, length_bp, length_M} and \code{ibd_status} respectively.
}
\description{
\code{getIBDsegments()} detects genomic regions shared IBD between all pairwise combinations of isolates.
}
