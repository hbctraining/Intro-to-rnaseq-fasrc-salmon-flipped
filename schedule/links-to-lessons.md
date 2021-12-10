# Bulk RNA-seq Data Analysis using High-Performance Computing (bulk RNA-seq Part I -- FASTQ to counts)

## Learning Objectives

- Understand the necessity for, and use of, the command line interface (bash) and HPC for analyzing high-throughput sequencing data.
- Understand best practices for designing an RNA-seq experiment and analysis the resulting data.

## Installations

***All:***

* [FileZilla Client](https://filezilla-project.org/download.php?type=client) (make sure you get ‘FileZilla Client')

***Mac users:***

* Plain text editor like [Sublime text](http://www.sublimetext.com/) or similar

***Windows users:***

* [GitBash](https://git-scm.com/download/win)
* Plain text editor like [Notepad++](http://notepad-plus-plus.org/) or similar

## Notes
* These materials focus on the use of local computational resources at Harvard, which are **only accessible to Harvard affiliates**
* Non-Harvard folks can [download the data](https://www.dropbox.com/s/3lua2h1oo18gbug/unix_lesson.tar.gz?dl=1) and set up to work on their local clusters (with the help of local system administrators)

## Cluster access
To run through the code in the lessons below, you will need a FAS-RC cluster account. Once you have an account, please do the following.

1. Log in using `ssh username@login.rc.fas.harvard.edu` and enter your password (replace username with your username). 
2. Once you are on the login node, use `salloc -p test -t 0-2:30 --mem 8G` to get on a compute node or as specified in the lesson.
3. Proceed only once your command prompt does not have the word `login` in it.
4. If you log out between lessons (using the `exit` command twice), please follow points 1. and 2. above to log back in and get on a compute node when you restart with the self learning.

## Lessons

### Part 1 
1. [Introduction to RNA-seq](../lessons/01_intro-to-RNAseq.md)
1. [Shell basics review](../lessons/shell_review.md)
1. [Working in an HPC environment - Review](../lessons/03_working_on_HPC.md)
1. [Best Practices in Research Data Management (RDM)](../lessons/04a_data_organization.md)
1. [Project Organization (using Data Management best practices)](../lessons/04b_data_organization.md)
     
***

### Part II
1. [Quality Control of Sequence Data: Running FASTQC](../lessons/05_qc_running_fastqc_interactively.md)
1. [Experimental design considerations](../lessons/02_experimental_planning_considerations.md)
1. [Quality Control of Sequence Data: Running FASTQC on multiple samples](../lessons/06_qc_running_fastqc_sbatch.md)
1. [Quality Control of Sequence Data: Evaluating FASTQC reports](../lessons/07_qc_fastqc_assessment.md)

***

### Part III 
1. [Sequence Alignment Theory](../lectures/alignment_quantification.pdf)
1. [Quantifying expression using alignment-free methods (Salmon on multiple samples)](../lessons/09_quasi_alignment_salmon_sbatch.md)

***

### Part IV

1. [QC with Alignment Data](../lessons/10_QC_Qualimap.md)
1. [Documenting Steps in the Workflow with MultiQC](../lessons/11_multiQC.md)
1. [Troubleshooting RNA-seq Data Analysis](../lectures/RNA-seq_troubleshooting.pdf)

***

### Part V

1. [Automating the RNA-seq workflow](../lessons/12_automating_workflow.md)

***

### Answer Keys

* [Experimental design (one possible solution)](https://www.dropbox.com/s/524mevuyba34l5b/exp_design_table.xlsx?dl=1)
* [FASTQC sbatch script](https://www.dropbox.com/s/9wdyhfqpic05l6p/mov10_fastqc.run?dl=1)
* [FASTQC sbatch script .out file](https://www.dropbox.com/s/l7puf8oahtbwmpk/22914006.out?dl=1)
* [FASTQC sbatch script .err file](https://www.dropbox.com/s/8a1g6o9t2kxit30/22914006.err?dl=1).
* [sbatch script to run salmon for all samples](../answer_key/salmon_all_samples.sbatch)
* [Automation Script](../scripts/rnaseq_analysis_on_input_file.sh)

***
   
## Building on this workshop
* [Introduction to R workshop materials](https://hbctraining.github.io/Intro-to-R-flipped/schedule/links-to-lessons.html)
* [Bulk RNA-seq Part II (differential gene expression analysis) materials](https://hbctraining.github.io/DGE_workshop_salmon_online/schedule/links-to-lessons.html)

***

## Resources
* [Video about statistics behind salmon quantification](https://www.youtube.com/watch?v=TMLIxwDP7sk)
* [Obtaining reference genomes or transcriptomes](https://hbctraining.github.io/Accessing_public_genomic_data/lessons/accessing_genome_reference_data.html)
* [Training materials from FAS-RC](https://docs.rc.fas.harvard.edu/kb/training-materials/)

***
*These materials have been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*
