module IOExtension

"""
    open(f::Function, files::Tuple{Vararg}, args...; kwargs....)

Apply the function `f` to various files, opened by broadcasting `open`
on a the `files` tuple and the additional arguments.
The resulting file descriptors are closed upon completion.
"""
function Base.open(f::Function, files::Tuple{Vararg}, args...; kwargs...)
    io = open.(files, args...; kwargs...)
    try
        f(io...)
    finally
        close.(io)
    end
end

end # module
