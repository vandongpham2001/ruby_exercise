arr = []
for i in 0..2 do
    print "input number #{i+1} is "
    # x = gets.to_i
    # arr.append(x)
    arr[i] = gets.to_i
end

if ((arr[0] + arr[1] > arr[2]) && (arr[1] + arr[2] > arr[0]) && (arr[0] + arr[2] > arr[1])) 
  puts "is Triangle"
else 
    puts "not is Triangle"
end