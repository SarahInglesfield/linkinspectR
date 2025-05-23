% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/by_peak_proportion.R
\name{by_peak_proportion}
\alias{by_peak_proportion}
\title{Compare Proportion of Gene Expressing Cells by Peak Accessibility
Calculates and compares the proportion of cells expressing each linked gene between cells with and without accessibility at the linked peak. Returns a tibble by default or a ggplot object if \code{plot = TRUE}.}
\usage{
by_peak_proportion(links_data, plot = FALSE)
}
\arguments{
\item{links_data}{A tibble generated by \code{get_link_data()}}

\item{plot}{Logical; if \code{TRUE}, returns a ggplot object visualising expression and UMI distributions. Default is \code{FALSE}}
}
\value{
A tibble with one row per cell-peak-gene combination and the following columns:
\describe{
\item{gene}{: the selected linked gene}
\item{peak}{: the selected linked peak}
\item{score}{: the correlation coefficient - from LinkPeaks}
\item{zscore}{: the z-score of the correlation coefficient - from LinkPeaks}
\item{pvalue}{: the p-value associated with the z-score - from LinkPeaks}
\item{cell_barcode}{: the unique identifier for each cell - from Seurat Object}
\item{gene_data}{: the normalised RNAseq expression data - from Seurat Object}
\item{gene_counts}{: the raw RNAseq count data - from Seurat Object}
\item{peak_data}{: the normalised ATAC expression data - from Seurat Object}
\item{peak_counts}{: the raw ATAC count data - from Seurat Object}
\item{read_in_peak}{: Logical; \code{TRUE} if a read is observed in the peak for a given cell}
\item{cells_gene_expressed}{: number of cells expressing the linked gene (non-zero raw count)}
\item{cells_total}{: total number of cells in the population}
\item{pct_cells_gene_expressed}{: percentage of cells which express the linked gene}
\item{lower_conf_int}{: lower bound of 95\% confidence interval}
\item{upper_conf_int}{: upper bound of 95\% confidence interval}
}
}
\description{
Compare Proportion of Gene Expressing Cells by Peak Accessibility
Calculates and compares the proportion of cells expressing each linked gene between cells with and without accessibility at the linked peak. Returns a tibble by default or a ggplot object if \code{plot = TRUE}.
}
