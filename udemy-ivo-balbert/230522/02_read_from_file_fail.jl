
# create an empty matrix
lengths = []

fname = "../220605_01/iris.txt"

open(fname) do file
    for line in eachline(file)
        println(file)
    end
end
