
#show link: underline

= Creating documentation

== Directory format

All documentation files to be compiled in this repository follow the format of:

```
documentation/**/main.typ
```

The directory structure above the file is used to determine the output name.
For instance, in the case of this file:

#align(center)[
  `documentation/meta/creating_documentation/main.typ`

  #sym.arrow * `output/meta/creating_documentation.pdf` *
]

You can use the directory to store any other files needed for the documentation file. The build script will compile all `main.typ` files and ignore anything else. Directories that don't contain a `main.typ` will not be created in the output (unless they have a subdirectory that does have a `main.typ`).

For instance, the following vector image of a startled kettle is in `documentation/meta/creating_documentation/kettle-alert.svg`, used here under the MIT/Apache 2.0 license from the #link("https://pictogrammers.com/library/mdi/icon/kettle-alert/")[Pictogrammer's Material Design Icon] set.

#figure(
  image("kettle-alert.svg", width: 1in),
  caption: [A startled kettle.]
)

Files that are frequently shared amongst files are found in the `universal` directory. You can reference these files as well in documentation. For instance, here is the Helping Hands logo:

#figure(
  image("../../../universal/images/logos/logo.svg", width: 1in),
  caption: [Helping Hands logo.]
)

To contribute documentation, create a pull request against the `source` branch.

Some inputs from the build process are available for use in documentation. For instance, this output PDF was compiled at #if "compile_time" in sys.inputs { [#sys.inputs.compile_time] } else { [an unknown time (are you compiling this locally?)] }.
