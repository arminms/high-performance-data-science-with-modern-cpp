---
title: Xeus-Cling
subtitle: Cling, Xeus and Xeus-Cling
subject: About Xeus-Cling
description: All about Cling, Xeus and Xeus-Cling
---

## [`C++`](wiki:C++) Interpreter: [`cling`](https://cling.readthedocs.io/en/latest/)

[`Cling`](https://cling.readthedocs.io/en/latest/) is an interactive [`C++`](wiki:C++) interpreter, developed by <wiki:CERN> for the <wiki:ROOT> project and built on the top of [`LLVM`](wiki:LLVM) and [`clang`](wiki:Clang) libraries. Its advantages over the standard interpreters are:

- It has command line prompt and [read-eval-print-loop (REPL)](wiki:Read–eval–print_loop).
- Uses [just-in-time (JIT)](wiki:Just-in-time_compilation) compiler for compilation.

## Jupyter Kernel: `Xeus`

Jupyter kernels are _programming language specific_ process that run independently and they're usually based on either [`IPython`](wiki:IPython) or [`Xeus`](https://xeus.readthedocs.io/en/latest/). 

[`Xeus`](https://xeus.readthedocs.io/en/latest/) is a [`C++`](wiki:C++) library that facilitates the implementation of kernels for Jupyter and provides a number of kernels such as [`Xeus-Cling`](xref:xeus-cling) ([`C++`](wiki:C++)), [`Xeus-Sql`](https://github.com/jupyter-xeus/xeus-sql) ([`SQL`](wiki:SQL)) and many more.

## [`Xeus-Cling`](xref:xeus-cling)

[`Xeus-Cling`](xref:xeus-cling) is a Jupyter kernel for ([`C++`](wiki:C++)) based on [`cling`](https://cling.readthedocs.io/en/latest/) as the ([`C++`](wiki:C++)) interpreter and the native implementation of the Jupyter protocol [`Xeus`](https://xeus.readthedocs.io/en/latest/).

We use [`Xeus-Cling`](xref:xeus-cling) throughout this book to work with our ([`C++`](wiki:C++)) codes interactively. So, let's get started to work with it.
