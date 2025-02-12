---
title: Start using Xeus-Cling
subject: Xeus-Cling Quickstart
subtitle: Mamba, virtual environment and containers 
short_title: Get Started
description: Running xeus-cling in a virtual environment or a Docker container.
---

# Start using Xeus-Cling

---

Depending on your preference, you can use one/all of the following methods to launch [Jupyter](wiki:Project_Jupyter) notebooks with [`Xeus-Cling`](xref:xeus-cling) kernel for rapid prototyping.

### Creating a Conda/Mamba environment

The easiest way to install [`Xeus-Cling`](xref:xeus-cling) is to create an environment named `cling` using [Mamba](xref:mamba#installation/mamba-installation):

```bash
mamba create -n cling
mamba activate cling
```

Then you can install [`Xeus-Cling`](xref:xeus-cling) in this environment and its dependencies:

```bash
mamba install xeus-cling -c conda-forge
```

Now you can launch *Jupyter* with `jupyter lab` command and test your setup.

(python_ve)=
### Creating a Python environment

If you're more adventurous, you can build [`Xeus-Cling`](xref:xeus-cling) along with all the dependencies from the source in a Python virtual environment using the bash script available [here](xref:xcj#build_virtual_env). As a bonus, you will get a newer version of [`cling`](https://cling.readthedocs.io/en/latest/) (`1.0~dev`) based on `llvm 13.0` that supports <wiki:OpenMP> and <wiki:CUDA>.

The same approach was used to build the container images below.

(containers)=
### Using pre-built container images

#### [Docker](wiki:Docker_(software))
```bash
docker run -p 8888:8888 -it --rm asobhani/high-performance-data-science-with-modern-cpp
```
Or this one with <wiki:CUDA> support:
```bash
docker run --gpus=all -p 8888:8888 -it --rm asobhani/high-performance-data-science-with-modern-cpp:latest-cuda
```
If you like to work with your notebooks outside the container (e.g. current folder), you can use the following command instead:
```bash
docker run -v $PWD:/home/jovyan -p 8888:8888 -it --rm asobhani/high-performance-data-science-with-modern-cpp
```

#### [Apptainer](wiki:Singularity_(software))

If you're working on an HPC cluster, you can use [Apptainer](wiki:Singularity_(software)) instead:

```bash
apptainer run docker://asobhani/high-performance-data-science-with-modern-cpp:latest
```
Or this one with <wiki:CUDA> support:
```bash
apptainer run --nv docker://asobhani/high-performance-data-science-with-modern-cpp:latest-cuda
```
