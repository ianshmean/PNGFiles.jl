module PNGFiles
# Started as a fork of https://github.com/FugroRoames/LibPNG.jl

using ImageCore
using IndirectArrays
using OffsetArrays
using libpng_jll

libpng_wrap_dir = joinpath(@__DIR__, "..", "gen", "libpng")
using CEnum
include(joinpath(libpng_wrap_dir, "ctypes.jl"))
include(joinpath(libpng_wrap_dir, "libpng_common.jl"))
include(joinpath(libpng_wrap_dir, "libpng_api.jl"))

include("wraphelpers.jl")
include("utils.jl")
include("io.jl")

end # module
