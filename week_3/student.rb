class Student
    @grade_1
    @grade_2
    @grade_3

    def initialize grade_1, grade_2, grade_3
        @grade_1 = grade_1
        @grade_2 = grade_2
        @grade_3 = grade_3
    end

    def average
        avg = (@grade_1 + @grade_2 + @grade_3).to_f / 3
    end 

    def show
        puts "average is: #{average}"
    end
end

st = Student.new(9, 8, 8)
st.show
