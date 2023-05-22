1 + 1

using Plots
x = 1:10
y = rand(10);

plot(x,y)

Array{Float64, 2}
Dict{Symbol, Float64}

function double(f::Float64)
    f*2
end

double(2)
# ERROR: MethodError: no method matching double(::Int64)
# Closest candidates are:
#   double(::Float64) at REPL[10]:2
# Stacktrace:
#  [1] top-level scope at REPL[11]:1

double(2.0)
# this one works


# Types
# Supertypes, which are groups of types
Int32 <: Signed
# Int32 is a subtype of Signed

Float64 <: Number
# Float64 is a subtype of Number


Int64 <: Integer
# true


# to define types
# is it OOP?


# type Iris
#     sepal_length::Float64
#     species::ASCIIString
# end


a = 10;
a = "Hello World";


a::Int32 = 10;
# ERROR: syntax: type declarations on global variables are not yet supported
# Stacktrace:
#  [1] top-level scope at REPL[22]:1
a = "Hello World";
