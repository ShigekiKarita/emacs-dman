# Example emacs dynamic module in D

After installing emacs 27 and dmd 2.098.0, run:

```bash
$ make test
emacs -batch -l test.el

Loading dman (module)...

 o       o
 |        \
  \ ___   /
   |,-oo\\
   ||    || < Hello Emacs from D!!
   ||    ||
   ||   //
   ||__//
   ’---
    \  \
    /  /
    ^  ^
...
```

## How to update emacs_module.d

Currently, emacs_module.d assumes Emacs 27. To generate it with yours, run:

```
cp /usr/include/emacs-module.h .
make dman.so
```

Note that this step requires dpp. To install dpp, see
https://github.com/atilaneves/dpp#build-instructions
