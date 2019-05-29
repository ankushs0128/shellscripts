# shellscripts
Obtaining SRRIDs in SRA accession table from GSMID 

grep ^SRR SRA_Accessions.tab | grep GSM1379814



shell scripts for data handling


Another simple way is to check the SRR ID of your sample in SRA Run Browser: http://trace.ncbi.nlm.nih.gov/Traces/sra/
"Browse" -> "Run Browser" -> then input your ID
The LAYOUT result will tell you. Also, the 'Reads' label shows 1 read for single end, and 2 reads for paired end.
