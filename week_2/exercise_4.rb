arr = []
for i in 0..2 do
    print "input number #{i+1} is "
    # x = gets.to_i
    # arr.append(x)
    arr[i] = gets.to_i
end
puts "increasing #{arr.sort}"
puts "decreasing #{arr.sort.reverse}"