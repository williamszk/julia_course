#20726_01.jl

using Printf


# how to measure time elapsed between two points in the code?
# one way to measure time of execution
# this maybe affected by other process running in the computer
function m1()
	start = time()
	for i in rand(1000)
		sqrt(i)
		# println(i)
	end
	elapsed = time() - start
	print(@sprintf("%.30f",elapsed))
end

m1()


@time m1()


using Printf
x = 1.77715
print("I'm long: $x, but I'm alright: $(@sprintf("%.2f", x))")












