# Ancient DNA (or probably fresh DNA) WGS bioinfo with NUS-HPC

This repository includes a shell file for submitting the NextFlow run to NUS-HPC


## Setup

Set working directory to a temporate path of 500G (all files will be deleted after 60 days).

Upload raw reads.

Upload reference genome.

Load the lastest java available in HPC and install the lastest version of NextFlow and the EAGER pipeline

```bash
cd hpctmp/<YOUR NUSID>/<PROJECT ID>
module load jre/1.8.0_162
module load python3.6.4
curl -fsSL get.nextflow.io | bash
pip install --upgrade pip --user
pip install nf-core --user
```
After this, a file named "nextflow" should be appear in the working directory.

## Launch EAGER pipeline

Visit the EAGER website at: https://nf-co.re/eager 

Click on the Launch to enter a page to set all the specification and parameters for the pipeline. 

For the "-profile", enter "singularity" as we are currently use NUS-HPC's singularity for the configuration.

Once submit all the parameters, you will enter a new page. Create a blank file in your working directory named "nf-params.json" and copy the code in the text box under "Launching with no internet and without nf-core/tools" section.

Finally submit the pipeline to NUS-HPC with the shell file (see example "EAGER.sh").


## Contact author

tangqiannus@gmail.com
