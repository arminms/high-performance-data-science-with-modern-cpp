---
title: Plotting with G3P
subtitle: Gnuplot at your fingertips
subject: About g3p
description: Start plotting with C++ in a Jupyter Notebook
---

# Plotting with G3P

---

[`Xeus-Cling`](xref:xeus-cling) supports displaying rich content in _Jupyter Notebooks_, but you need a [`C++`](wiki:C++) library like Python's <wiki:Matplotlib> that supports it. While you can find few projects on <wiki:GitHub> for that, they're either abandoned (e.g. [xplot](https://github.com/QuantStack/xplot)) or in an early stage for a long time (e.g. [XVega](https://github.com/jupyter-xeus/xvega)).

:::::{aside}

````{seealso} Watch Baolai's talk 📺
:class: dropdown
:open:

```{iframe} https://www.youtube.com/embed/A9YPibAEXEE
:width: 100%
```
````
:::::

::::{div}
:class: col-gutter-left align-middle
:::{image} https://raw.githubusercontent.com/arminms/g3p/refs/heads/main/docs/images/g3p_logo_bold.svg
:::
::::
::::{div}
:class: col-body-right
Back in 2022, I was in need of such a library to no avail. I started to think of a quick-and-dirty hack like the one mentioned [here](https://github.com/jupyter-xeus/xeus-cling/issues/435#issuecomment-1170253431). After attending a [SHARCNET's General Interest webinar](https://youtube.sharcnet.ca) by my colleague **Ge Baolai** about [realtime display with Gnuplot](https://youtu.be/A9YPibAEXEE) around the same time, the idea of using <wiki:Gnuplot> as the backend sparked in my mind and <xref:g3p> was born.
::::

## G3P 101
Let's switch to [G3P Guide](xref:g3p)➡️ to learn more about it.