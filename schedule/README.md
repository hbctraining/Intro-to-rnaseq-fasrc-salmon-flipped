# Workshop Schedule

> **Pre-requisite for this workshop:** The *Basic Data Skills* [Introduction to the command-line interface](https://hbctraining.github.io/Intro-to-shell-fasrc-flipped/) workshop or a working knowledge of the command line and cluster computing.

## Pre-reading

* [Shell basics review](../lessons/shell_review.md)
* [Best Practices in Research Data Management (RDM)](../lessons/04a_data_organization.md)
* [Introduction to RNA-seq](../lessons/01_intro-to-RNAseq.md)

## Day 1

| Time |  Topic  | Instructor |
|:-----------:|:----------:|:--------:|
| 09:30 - 09:45 | [Workshop Introduction](../lectures/Intro_to_workshop.pdf) | Meeta |
| 09:45 - 10:25 | [Working in an HPC environment - Review](../lessons/03_working_on_HPC.md) | Meeta |
| 10:25 - 11:05 | [Project Organization (using Data Management best practices)](../lessons/04b_data_organization.md) | Will |
| 11:05 - 11:45 | [Quality Control of Sequence Data: Running FASTQC](../lessons/05_qc_running_fastqc_interactively.md) | Jihe |
| 11:45 - 12:00 | Overview of self-learning materials and homework submission | Jihe |

### Before the next class:

1. Please **study the contents** and **work through all the code** within the following lessons:

 * [Experimental design considerations](../lessons/02_experimental_planning_considerations.md)
 * [Quality Control of Sequence Data: Running FASTQC on multiple samples](../lessons/06_qc_running_fastqc_sbatch.md)
 * [Quality Control of Sequence Data: Evaluating FASTQC reports](../lessons/07_qc_fastqc_assessment.md)

    > **NOTE:** To run through the code above, you will need to be **logged into FAS-RC** and **working on a compute node** (i.e. your command prompt should have the word `compute` in it).
    > 1. Log in using `ssh username@login.rc.fas.harvard.edu` and enter your password (replace username with your username). 
    > 2. Once you are on the login node, use `salloc -p test -t 0-2:30 --mem 8G` to get on a compute node or as specified in the lesson.
    > 3. Proceed only once your command prompt does not have the word `login` in it.
    > 4. If you log out between lessons (using the `exit` command twice), please follow points 1. and 2. above to log back in and get on a compute node when you restart with the self learning.

2. **Complete the exercises**:
   * Each lesson above contain exercises; please go through each of them.
   * **Copy over** your code from the exercises into a text file. 
   * **Upload the saved text file** to [Dropbox](https://www.dropbox.com/request/j5oKCIOOw1NqpQ7ZeKqq) the **day before the next class**.
   
### Questions?
* ***If you get stuck due to an error*** while runnning code in the lesson, [email us](mailto:hbctraining@hsph.harvard.edu) 
* Post any **conceptual questions** that you would like to have **reviewed in class** [here](https://PollEv.com/hbctraining945).

***

## Day 2

| Time |  Topic  | Instructor |
|:-----------:|:----------:|:--------:|
| 09:30 - 10:30 | Self-learning lessons review | All |
| 10:30 - 11:10 | [Sequence Alignment Theory](../lectures/alignment_quantification.pdf) | Meeta |
| 11:10 - 11:50 | [Quantifying expression using alignment-free methods (Salmon)](../lessons/08_quasi_alignment_salmon.md) | Will |
| 11:50 - 12:00 | [Review of workflow](../lectures/workflow_overview.pdf) | Meeta |

### Before the next class:

1. Please **study the contents** and **work through all the code** within the following lessons:

 * [Quantifying expression using alignment-free methods (Salmon on multiple samples)](../lessons/09_quasi_alignment_salmon_sbatch.md)
 * [QC with Alignment Data](../lessons/10_QC_Qualimap.md)
 * [Documenting Steps in the Workflow with MultiQC](../lessons/11_multiQC.md)

     > **NOTE:** To run through the code above, you will need to be **logged into FAS-RC** and **working on a compute node** (i.e. your command prompt should have the word `compute` in it).
     > 1. Log in using `ssh username@login.rc.fas.harvard.edu` and enter your password (replace username with your username).
     > 2. Once you are on the login node, use `salloc -p test -t 0-2:30 --mem 8G` to get on a compute node or as specified in the lesson.
     > 3. Proceed only once your command prompt does not have the word `login` in it.
     > 4. If you log out between lessons (using the `exit` command twice), please follow points 1. and 2. above to log back in and get on a compute node when you restart with the self learning.

2. **Complete the exercises**:
   * Each lesson above contain exercises; please go through each of them.
   * **Copy over** your code from the exercises into a text file. 
   * **Upload the saved text file** to [Dropbox](https://www.dropbox.com/request/SRVvXQ93t0emw3iqza9O) the **day before the next class**.
   
### Questions?
* ***If you get stuck due to an error*** while runnning code in the lesson, [email us](mailto:hbctraining@hsph.harvard.edu) 
* Post any **conceptual questions** that you would like to have **reviewed in class** [here](https://PollEv.com/hbctraining945).

***

## Day 3

| Time |  Topic  | Instructor |
|:-----------:|:----------:|:--------:|
| 09:30 - 10:10 | Self-learning lessons review | All |
| 10:10 - 10:45 | [Troubleshooting RNA-seq Data Analysis](../lectures/RNA-seq_troubleshooting.pdf) | Will |
| 10:45 - 11:45 | [Automating the RNA-seq workflow](../lessons/12_automating_workflow.md)| Meeta |
| 11:45 - 12:00 | [Wrap up](../lectures/workshop_wrapup.pdf) | Will |

***

* Downloadable Answer Keys (Day 2 exercises): 
  * [Experimental design (one possible solution)](https://www.dropbox.com/s/524mevuyba34l5b/exp_design_table.xlsx?dl=1)
  * [sbatch script to run FASTQC for all samples](../answer_key/mov10_fastqc.run)
  * [.out file](https://www.dropbox.com/s/l7puf8oahtbwmpk/22914006.out?dl=1)
  * [.err file](https://www.dropbox.com/s/8a1g6o9t2kxit30/22914006.err?dl=1).

* Downloadable Answer Keys (Day 3 exercises): 
  * [sbatch script to run salmon for all samples](../answer_key/salmon_all_samples.sbatch)

* [Automation Script](../scripts/rnaseq_analysis_on_input_file.sh)

***

## Resources
* [Video about statistics behind salmon quantification](https://www.youtube.com/watch?v=TMLIxwDP7sk)
* [Obtaining reference genomes or transcriptomes](https://hbctraining.github.io/Accessing_public_genomic_data/lessons/accessing_genome_reference_data.html)
* [Training materials from FAS-RC](https://docs.rc.fas.harvard.edu/kb/training-materials/)

***

## Building on this workshop
* [Introduction to R workshop materials](https://hbctraining.github.io/Intro-to-R-flipped/#lessons)
* [Introduction to Differential Gene Expression analysis (bulk RNA-seq) workshop materials](https://hbctraining.github.io/DGE_workshop_salmon_online/#lessons)

***
*These materials have been developed by members of the teaching team at the [Harvard Chan Bioinformatics Core (HBC)](http://bioinformatics.sph.harvard.edu/). These are open access materials distributed under the terms of the [Creative Commons Attribution license](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0), which permits unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.*
