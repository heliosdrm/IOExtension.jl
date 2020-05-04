using IOExtension, Test

path, io = mktemp()
println(io, "ABC")
println(io, "XYZ")
close(io)

path_out = tempname()

# open and work with various files
openmultiple((path, path_out), ("r", "w")) do io_in, io_out
    while !eof(io_in)
        s = readline(io_in)
        println(io_out, "copy: " * s)
    end
end

open(path_out) do io
    @test readline(io) == "copy: ABC"
    @test readline(io) == "copy: XYZ"
    @test eof(io)
end
rm(path_out)
