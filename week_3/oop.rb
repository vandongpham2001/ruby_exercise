class Grade 
    attr_accessor :math, :physical, :chemistry, :avg
    # def initialize
    #     print "math input: "
    #     @math = gets.to_f
    #     print "physical input: "
    #     @physical = gets.to_f
    #     print "chemistry input: "
    #     @chemistry = gets.to_f
    # end
    def initialize (math, physical, chemistry)
        @math = math
        @physical = physical
        @chemistry = chemistry
        @avg = average
    end

    def average
        avg = ((@math+@physical+@chemistry).to_f/3).round(2)
    end

    def show_grade
        puts "math is #{@math}"
        puts "physical is #{@physical}"
        puts "chemistry is #{@chemistry}"
        puts "average is #{@avg}"
    end
end

class Human
    attr_accessor :name, :gender, :hair, :height, :weight, :age, :phone, :email, :nation

    def initialize(name, gender, hair, height, weight, age, phone, email, nation)
        @name = name
        @gender = gender
        @hair = hair
        @height = height
        @weight = weight
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end

    def show
        puts "name: #{@name}"
        puts "gender: #{@gender}"
        puts "hair: #{@hair}"
        puts "height: #{@height}"
        puts "weight: #{@weight}"
        puts "age: #{@age}"
        puts "phone: #{@phone}"
        puts "email: #{@email}"
        puts "nation: #{@nation}"
    end
end

class Student < Human
    attr_accessor :school, :student_id, :class, :grade
    
    def initialize(name, gender, hair, height, weight, age, phone, email, nation, school, student_id, class_, math, physical, chemistry)
        super(name, gender, hair, height, weight, age, phone, email, nation)
        @school = school
        @student_id = student_id
        @class = class_
        @grade = Grade.new(math, physical, chemistry)
    end

    def show 
        super
        puts "school is #{@school}"
        puts "student_id is #{@student_id}"
        puts "class is #{@class_}"
        @grade.show_grade
    end
end

st1 = Student.new("Dong", "male", "black", "170", "50", 22, "0", "a@", "Vietnam", "UTE", "1911505310208", "19T2", 9, 9, 9)
st2 = Student.new("Dong1", "male", "black", "170", "50", 22, "0", "a@", "Vietnam", "UTE", "1911505310208", "19T2", 7, 7, 7)
st3 = Student.new("Dong2", "male", "black", "170", "50", 22, "0", "a@", "Vietnam", "UTE", "1911505310208", "19T2", 9, 7, 8)
st4 = Student.new("Dong3", "male", "black", "170", "50", 22, "0", "a@", "Vietnam", "UTE", "1911505310208", "19T2", 9, 9, 7)
st = []
st << st1
st << st2
st << st3
st << st4
puts "List student before sort: "
st.each do |s|
    puts "#{s.name}: #{s.grade.avg}"
end
st = st.sort_by{|s| [-s.grade.avg]}
puts "List student after sort: "
st.each do |s|
    puts "#{s.name}: #{s.grade.avg}"
end
