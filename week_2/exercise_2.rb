arr = []
perimeter = 0
half_perimeter = 0
area = 0
for i in 0..2 do
    print "input number #{i+1} is "
    # x = gets.to_i
    # arr.append(x)
    arr[i] = gets.to_i
end

if ((arr[0] + arr[1] > arr[2]) && (arr[1] + arr[2] > arr[0]) && (arr[0] + arr[2] > arr[1])) 
  puts "is Triangle"
  perimeter = arr.sum
  half_perimeter = perimeter.to_f / 2
  area = Math.sqrt(half_perimeter*(half_perimeter-arr[0])*(half_perimeter-arr[1])*(half_perimeter-arr[2]))
  puts "Perimeter: #{perimeter}"
  puts "Area: #{area}"

else 
    puts "not is Triangle"
end
