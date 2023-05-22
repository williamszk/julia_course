

[1,2,3]
# 3-element Vector

Array{Int64, 1} == Vector{Int64} # true

[1 2 3]
# 1x3 Matrix

ma = [1 2 3; 4 5 6]
# 2x3 matrix{Int64}
size(ma, 1) # 2: number of lines
size(ma,2) # 3: number of columns
ndims(ma) # 2: number of dimensions
eltype(ma) # Int64 type of element

# to create random valued matrices
rand(3,3)

rand(10:20, 5, 5)

# eye(3)
using LinearAlgebra
I(3)

plus = [n+m for n in 1:4, m in 1:4]

ma = [1 2 3; 4 5 6; 7 8 9]
ma
ma[1,1]
ma[2,3]
ma[2, :]
ma[:,3]

ma[1:2, 2:3]

ma[2:end, 2:end]

ma[2,2] = 0
ma

# ma[2:3, 3] = -1 # this gives error

a = [1 2; 3 4]
b = [5 6; 7 8]

c = [a b] # concatenate matrices
c = [a; b]

c = hcat(a,b)
c = vcat(a,b)

a = [1 2; 3 4]
reshape(a, 1, 4)
reshape(a, 4, 1)


a = [1 2; 3 4]
b = [5 6; 7 8]

a + b # sum element by element
a * b # matrix product
a .* b # element by element multiplication
# a - 2 # not allowed anymore
a * 5 # multiplication of element by element

inv(a)
a' # matrix transpose

a * inv(a) # should produce an identity matrix







