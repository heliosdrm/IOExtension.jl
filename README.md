# IOExtension.jl
Extension to Julia IO functions

Install this package with:

```julia
]add https://github.com/heliosdrm/IOExtension.jl
```

Using this package provides a function to open and apply a function to various files, and ensure that they are closed upon completion of the function. E.g.:

```julia
using IOExtension
openmultiple(("inputfile.txt", "outputfile.txt"), ("r", "w")) do (io_in, io_out)
    # code to read from `io_in` (file stream of "inputfile.txt")
    # and write on `io_out` (file stream of "outputfile.txt")
end
```
