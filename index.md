---
title: High-Performance Data Science with Modern C++
subtitle: The Executable Book
description: The Modern C++ interface to Data Science World
authors:
  - name: Armin Sobhani
    affiliations:
      - id: uoit
        institution: Ontario Tech University
        ror: 016zre027
        department: Science
    orcid: 0000-0003-4089-3862
    email: armin.sobhani@ontariotechu.ca
    url: https://staff.sharcnet.ca/asobhani
---

[![GitHub License](https://img.shields.io/github/license/arminms/high-performance-data-science-with-modern-cpp?logo=github&logoColor=lightgrey&color=green)](https://github.com/arminms/high-performance-data-science-with-modern-cpp/blob/main/LICENSE)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/arminms/high-performance-data-science-with-modern-cpp/HEAD?labpath=01-the-basics.ipynb)

---

::::{grid} 1 1 2 2

:::{grid-item}
This is the home of an [executable book](https://executablebooks.org/) project about using _Modern_ <wiki:C++> for [high-performance](wiki:High-performance_computing) <wiki:data_science>.

It's a companion to a series of talks by [Armin Sobhani](https://armin.sobhani.me) for the [Compute Ontario Colloquia](https://www.computeontario.ca/training-colloquia).

It'll be updated as more talks in the series are delivered.
:::

:::{grid-item}
```{image} ./images/qrcode.png
```
:::

::::

::::{important} Try in a Container 🛠️
:class: dropdown
[Docker:](wiki:Docker_(software))
```bash
docker run -p 8888:8888 -it --rm asobhani/high-performance-data-science-with-modern-cpp
```
Or this one with <wiki:CUDA> support:
```bash
docker run --gpus=all -p 8888:8888 -it --rm asobhani/high-performance-data-science-with-modern-cpp:latest-cuda
```
[Apptainer:](wiki:Singularity_(software))
```bash
apptainer run docker://asobhani/high-performance-data-science-with-modern-cpp:latest
```
Or this one with <wiki:CUDA> support:
```bash
apptainer run --nv docker://asobhani/high-performance-data-science-with-modern-cpp:latest-cuda
```
::::

:::::{important} Try on Binder 🛠️
:class: dropdown
::::{grid} 2 2 2 2
:::{grid-item}
👉   [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/arminms/high-performance-data-science-with-modern-cpp/HEAD?labpath=01-the-basics.ipynb)
:::
:::{grid-item}
_Be advised sometimes it takes several minutes to start!_
:::
::::
:::::

## Watch the Recordings 📺
::::{seealso} 1️⃣ Xeus-Cling and G3P
:class: dropdown
:::{iframe} https://www.youtube.com/embed/YPQUIkSIFhw
:width: 100%
:::
::::

## C++ vs. Python for Data Science

::::{grid} 1 1 2 2

:::{card}
:header: 😌 **Ease of Use** 
:footer: **Winner**: `Python`🥇

- <wiki:C++> has a steeper learning curve and more complex syntax compared to `Python` 👎
- [Python](wiki:Python_language)'s syntax is simple and readable, making it accessible for beginners 👍
:::

:::{card}
:header: 📚 **Community and Libraries** 
:footer: **Winner**: `Python`🥇

- <wiki:C++>'s ecosystem is not as extensive as `Python`'s for data science 👎
- [Python](wiki:Python_language) has extensive libraries like <wiki:NumPy>, [Pandas](wiki:Pandas_(software)), <wiki:Matplotlib>, etc. and a large and active community 👍
:::

:::{card}
:header: 🏃 **Performance** 
:footer: **Winner**: `C++`🥇

- <wiki:C++> is known for its high performance and efficiency 👍
- [Python](wiki:Python_language) is generally slower than _C++_ due to its interpreted nature 👎
:::

:::{card}
:header: 🔀 **Concurrency** 
:footer: **Winner**: `C++`🥇

- <wiki:C++> has built-in support for [concurrency](https://en.cppreference.com/w/cpp/thread) (`C++11`) and [parallel algorithms](https://en.cppreference.com/w/cpp/algorithm#Execution_policies) (`C++17`) 👍
- [Python](wiki:Python_language)'s <wiki:global_interpreter_lock> can be a limitation for multi-threaded applications 👎
:::

:::{card}
:header: 💼 **Memory Management** 
:footer: **Winner**: `C++`🥇

- <wiki:C++> offers fine-grained control over memory management, which can be crucial for large-scale data processing 👍
- [Python](wiki:Python_language) offers less control compared to `C++` 👎
:::

:::{card}
:header: 💫 **Rapid Prototyping** 
:footer: **Winner**: `Python`🥇
:link: ./xeus-cling/about.md

- <wiki:C++>'s compiled nature makes it a lackluster 👎
- [Python](wiki:Python_language)'s interpreted nature combined with <wiki:Project_Jupyter> makes it a perfect match for the job 👍
:::

::::
