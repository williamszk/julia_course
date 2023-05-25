# array

collection = [1,2,3,4,5] # Int64

collection = [1,2,3,5.0] # Float64
println(typeof(collection))

collection = [1,2,3,5.0, 5//3] # rationals are converted to float

collection = [1,2,3,"5"] # Vector of Any

# the ! indicates that this function will mutate the state of the variable
append!(collection, 60)
# using bang (!) is a convetion

collection = [10,20,30,40,50,60]
# Slicing
# it is inclusive
collection[1:4]
collection[1:5]

collection[1:end]
collection[2:end]
# collection[:end] # this will give error

# this will create a copy of the array
collection[:]

# :4 # is a symbol which means 4
collection[:4]
# julia will take this as just 4 not start:4

# take the last element
collection[end]

# take the last but one
collection[end-1]

# collection[-1] # this will give an error

# @show is a macro
@show collection
collection

# including a semicolon at the end will not return the value at the end
@show collection;

# copy by reference or clone?
copy_collection = collection

copy_collection[1] = 99

@show collection;
# we changed the original collection too...
# that means it is not a true copy, just creating another binding

second_copy = copy(collection)
second_copy[1] = 1999
@show collection;
# with the function copy() we can truly create another object in memory
# and copy all its content

# Tuple
collection = (10,20,30)
# tuples are immutable

# Named Tuple, it is a merge between tuples and dictionaries
tools = (language="julia", ide="pluto",explorer="perseverence")
tools.explorer
tools.language

# we can't add new keys to Named Tuples
# tools.fruit = "banana" # this breaks

# Dictionaries
d = Dict("language"=>"julia","ide"=>"jupyter")
d["language"]
d["ide"]

# we can add new items to dictionaries
d["fruit"] = "banana"

@show d

# this will remove the last included item in the dict
pop!(d)
@show d
























