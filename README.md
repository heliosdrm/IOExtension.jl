# IOExtension.jl
Extension to Julia IO functions

Install this package with:

```julia
]add https://github.com/heliosdrm/IOExtension.jl
```

Using this package provides a method to open and apply a function to various files, and ensure that they are closed upon completion of the function. E.g.:

```julia
using IOExtension
open(("inputfile.txt", "outputfile.txt"), ("r", "w")) do (io_in, io_out)
    # code to read from `io_in` (file stream of "inputfile.txt")
    # and write on `io_out` (file stream of "outputfile.txt")
end
```

**Note**

Since this package does define neither the function nor the argument types, this method is what it is considered ["type piracy"](https://docs.julialang.org/en/v1/manual/style-guide/#Avoid-type-piracy-1), so its usage could conflict with other packages or extensions of Julia Base.

