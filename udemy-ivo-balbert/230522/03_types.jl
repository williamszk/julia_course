# https://www.udemy.com/course/draft/1164440/learn/lecture/6792682#overview
julia
Array{Float64, 2}
Dict{Symbol, Float64}

# Array{T, 2}
# Dict{K, V}


function double(f::Float64)
    f * 2
end

double(2.0)

begin
    local n::Int32 = 8
    n + 2
end

# (31+42)::Float64
# :: is called the assertion operator

super(Int64)

subtypes(Signed)

# check if some type is subtype of another
Int32 <: Signed # true
Float64 <: Number # true

struct Iris
    sepal_length::Float64
    sepal_width::Float64
    petal_length::Float64
    petal_width::Float64
    species::String
end

Iris
fieldnames(Iris)

iris1 = Iris(5.1, 3.4, 1.4, 0.2, "I. setosa")

iris1.petal_length
iris1.petal_width
iris1.species

# using generics
struct IrisG{T <: Real}
    sepal_length::T
    sepal_width::T
    petal_length::T
    petal_width::T
    species::String
end
# the difference here is that the fields of the struct can be any type that 
# are subtypes of the Real type, that includes: Float64, Float32 and others...
# we say that the struct is parametarized

iris_g_1 = IrisG(1.2, 2.3, 3.3, 3.2, "I. banana")
iris_g_1.species
iris_g_1.sepal_length

# write a parametarized function
function add(x::Float64, y::Float64)
    x + y
end

add(10.2, 20.2)

#-------------------------------------------------------------------------------- 

# install some packages
using Pkg
Pkg.add("RCall")

using RCall


dataset("ggplot2", "diamonds")
