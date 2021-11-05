#!/bin/bash
# This script was created by John Harvard on November 5, 2021 at Harvard University. 
# The objctive of this script is to run Salmon in serial using a directory of FASTQ files.

# The various SBATCH directives are:
#SBATCH -p shared
#SBATCH -c 6
#SBATCH -t 0-12:00
#SBATCH --mem 8G
#SBATCH -J salmon_in_serial
#SBATCH -o %j.out
#SBATCH -e %j.err
#SBATCH --mail-type END
#SBATCH --mail-user jharvard@harvard.edu


# Load Salmon
module load salmon/0.12.0-fasrc01

# Change directories to output directory
cd ~/rnaseq/results/salmon/

# For each of the FASTQ files, do:
for fq in ~/rnaseq/raw_data/*.fq

do

# Create a prefix for the output file
samplename=`basename $fq .fq`

# Run Salmon
salmon quant -i /n/holylfs05/LABS/hsph_bioinfo/Everyone/Workshops/Intro_to_rnaseq/indicies/salmon_index \
-l A \
-r $fq \
-o ${samplename}.salmon \
--seqBias \
--useVBOpt \
--validateMappings \
-p 6 \
--numBootstraps 30


done

