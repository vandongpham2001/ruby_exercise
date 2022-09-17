print "Type number element of array: "
n = gets.to_i
arr = []
avg = 0
for i in 0..n-1 do
    print "input number #{i+1} is "
    # x = gets.to_i
    # arr.append(x)
    arr[i] = gets.to_i
end
print "max element in array is: ", arr.max, "\n"
print "min element in array is: ", arr.min, "\n"
print "average element in array is: ", arr.sum.to_f/arr.size, "\n"
# print "average element in array is: ", arr.sum(0.0)/arr.size, "\n"
