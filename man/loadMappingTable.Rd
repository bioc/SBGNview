% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parsing.utilities.R
\name{loadMappingTable}
\alias{loadMappingTable}
\title{Generate ID mapping table from input and output ID types. If provided a vector of input IDs (limit.to.ids argument), the function will output mapping table only containing the input IDs. Otherwise, the function will output all IDs of input and output types (restricted to a species if working on gene types and specified  the "species" parameter).}
\usage{
loadMappingTable(output.type, input.type, species = NULL, cpd.or.gene,
  limit.to.ids = NULL, SBGNview.data.folder = "./SBGNview.tmp.data")
}
\arguments{
\item{output.type}{A character string. Gene or compound ID type}

\item{input.type}{A character string. Gene or compound ID type}

\item{species}{A character string. Three letter KEGG species code.}

\item{cpd.or.gene}{A character string. Either "gene" or "compound"}

\item{limit.to.ids}{vector. Molecule IDs of "input.type".}

\item{SBGNview.data.folder}{A character string. The path to a folder that will hold download ID mapping files and pathway information data files. The data can be reused once downloaded.}
}
\value{
A list containing the mapping table.
}
\description{
Generate ID mapping table from input and output ID types. If provided a vector of input IDs (limit.to.ids argument), the function will output mapping table only containing the input IDs. Otherwise, the function will output all IDs of input and output types (restricted to a species if working on gene types and specified  the "species" parameter).
}
\examples{
 data(mapped.ids)
 entrez.to.pathwayCommons = loadMappingTable(
                                input.type = "ENTREZID"
                                ,output.type = "pathwayCommons"
                                ,species = "hsa"
                                ,cpd.or.gene = "gene"
                             )
                             
}