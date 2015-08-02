# docker-haskell-vim-now
## Haskell with vim-now by [Alejandro Baez](https://twitter.com/a_baesz)

### DESCRIPTION
Sort of got tired of doing the whole setup of Haskell each time I wanted to
run a new build. So I ended up deciding to use docker for the good ol' purpose.

Nothing too advance, uses [haskell-vim-now](https://github.com/begriffs/haskell-vim-now/blob/master/.vimrc)
for the texteditor/ide setup on vim.

### USAGE
You can see the auto configurations already for vim under `~/.vimrc.local`. If
you want to edit, please by all means do so. :)

To run the container as a base for your docker builds, just tweak how you will
the Dockerfile like the example below:

```
FROM abaez/haskell

ADD <your own vimrc.local> /root/.vimrc.local
```

To run directly through /bin/bash, first run something similar to below:

```
docker run -it -v "<your project>:/project" abaez/haskell-vim-now /bin/bash
```

Afterwards, open vim and run  `:VundleUpdate` for an update of plugins
associated with your build.

### LICENSE
Copyright (c) 2015 [Alejandro Baez](https://twitter.com/a_baez)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
