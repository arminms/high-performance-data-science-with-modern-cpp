#
# Copyright (c) 2025 Armin Sobhani (arminms@gmail.com)
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
ARG CUDA=0

#-- base-0 image (no CUDA) -----------------------------------------------------

FROM asobhani/xeus-cling-jupyter:latest AS base-0

#-- base-1 image (with CUDA) ---------------------------------------------------

FROM asobhani/xeus-cling-jupyter:latest-cuda AS base-1

#-- final image ----------------------------------------------------------------

FROM base-${CUDA} AS high-performance-data-science-with-modern-cpp

# change default shell to bash
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# copy tutorial markdowns to the home directory and convert them to notebooks
COPY --chown=${NB_UID}:${NB_GID} xeus-cling/*.md ${HOME}/
RUN set -ex \
    && cd ${HOME} \
    && rm -rf about.md quickstart.md \
    && sed -i -e 's/name: xcpp17/name: xcpp17-cuda/g' 04-cuda.md \
    && jupytext --to notebook *.md \
    && rm -rf *.md
