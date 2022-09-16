puts "Xin chào Phạm Văn Đông 1911505310208"
puts "Nhập số bất kỳ: "
number = gets
print "Số vừa nhập là: #{number}"
puts "Nhập hai số bất kỳ: "
a, b = gets.split
puts "Số lớn nhât là: #{a>b ? a : b}" 

s = 0
s5 = 0
for i in 1..10 do
  puts i
  s += i
  if (i%5==0) then
    s5+=i
  end
end
print "Sum is #{s}\n"
print "Sum5 is #{s5}"
