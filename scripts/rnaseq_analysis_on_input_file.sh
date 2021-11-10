#!/bin/bash/
# This script takes a fastq file of RNA-seq data, runs FastQC, STAR, Qualimap and Salmon.
# USAGE: sh rnaseq_analysis_on_input_file.sh <name of fastq file>

# change directories to /n/holyscratch01/ so that all the analysis is stored there.

cd /n/holyscratch01/PI_lab/$USER/rnaseq_hbc-workshop/

# initialize a variable with an intuitive name to store the name of the input fastq file

fq=$1

# grab base of filename for naming outputs

samplename=`basename $fq .subset.fq`
echo "Sample name is $samplename"   

# specify the number of cores to use

cores=6

genome=/n/holylfs05/LABS/hsph_bioinfo/Everyone/Workshops/Intro_to_rnaseq/indicies/ensembl38_STAR_index
transcriptome=/n/holylfs05/LABS/hsph_bioinfo/Everyone/Workshops/Intro_to_rnaseq/indicies/salmon_index
gtf=/n/holylfs05/LABS/hsph_bioinfo/Everyone/Workshops/Intro_to_rnaseq/reference_data/Homo_sapiens.GRCh38.92.gtf

# make all of the output directories
# The -p option means mkdir will create the whole path if it 
# does not exist and refrain from complaining if it does exist

mkdir -p results/fastqc/
mkdir -p results/STAR/
mkdir -p results/qualimap/
mkdir -p results/salmon/

# set up output filenames and locations

fastqc_out=results/fastqc/
align_out=results/STAR/${samplename}_
align_out_bam=results/STAR/${samplename}_Aligned.sortedByCoord.out.bam
qualimap_out=results/qualimap/${samplename}.qualimap
salmon_out=results/salmon/${samplename}.salmon
salmon_mappings=results/salmon/${samplename}_salmon.out

# set up the software environment (use version numbers)


module load fastqc/0.11.8-fasrc01
module load STAR/2.7.0e-fasrc01
module load salmon/0.12.0-fasrc01

unset DISPLAY

export PATH=$PATH:/n/holylfs05/LABS/hsph_bioinfo/Everyone/holylfs/bcbio_nextgen/bin:/n/holylfs05/LABS/hsph_bioinfo/Everyone/holylfs/bcbio_nextgen/anaconda/bin

echo "Processing file $fq"

echo "Starting QC for $samplename"

echo "Error comes here"

# Run FastQC and move output to the appropriate folder
fastqc -o $fastqc_out $fq 

echo "Error stop here"

# Run STAR
STAR --runThreadN $cores --genomeDir $genome --readFilesIn $fq --outFileNamePrefix $align_out --outSAMtype BAM SortedByCoordinate --outSAMunmapped Within --outSAMattributes Standard

# Run Qualimap
qualimap rnaseq \
-outdir $qualimap_out \
-a proportional \
-bam $align_out_bam \
-p strand-specific-reverse \
-gtf $gtf \
--java-mem-size=8G

# Run salmon

echo "Starting Salmon run for $samplename"

salmon quant -i $transcriptome \
-p $cores \
-l A \
-r $fq \
-o $salmon_out \
--seqBias \
--useVBOpt
