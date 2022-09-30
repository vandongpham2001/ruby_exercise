class CanBo
    attr_accessor :name208, :age208, :gender208, :address208

    def initialize(name208, age208, gender208, address208)
        @name208 = name208
        @age208 = age208
        @gender208 = gender208
        @address208 = address208
    end

    def show
        puts "name: #{@name208}"
        puts "age: #{@age208}"
        puts "gender: #{@gender208}"
        puts "address: #{@address208}"
    end
end

class CongNhan < CanBo
    attr_accessor :bac208

    def initialize(name208, age208, gender208, address208, bac208)
        super(name208, age208, gender208, address208)
        @bac208 = bac208
    end

    def show
        super
        puts "bac208: #{@bac208}"
    end
end

class KySu < CanBo
    attr_accessor :nganhDaoTao208

    def initialize(name208, age208, gender208, address208, nganhDaoTao208)
        super(name208, age208, gender208, address208)
        @nganhDaoTao208 = nganhDaoTao208
    end

    def show
        super
        puts "nganhDaoTao: #{@nganhDaoTao208}"
    end
end

class NhanVien < CanBo
    attr_accessor :congViec208
    
    def initialize(name208, age208, gender208, address208, congViec208)
        super(name208, age208, gender208, address208)
        @congViec208 = congViec208
    end

    def show
        super
        puts "congViec: #{@congViec208}"
    end
end

class QLCB
    attr_accessor :dscb208

    def initialize()
        @dscb208 = []
    end
    
    def themCB(canBo208)
        @dscb208 << canBo208
    end

    def timKiem(keyword208)
        rs = @dscb208.select{|cb208| cb208 if cb208.name208.upcase.include? keyword208.upcase}
        return rs
    end

    def show_list
        @dscb208.each {|cb208| cb208.show}
    end
end

qlcb208 = QLCB.new
# qlcb.themCB(NhanVien.new('Dong', 20, 'Nam', 'Quang Nam', 'be'))
# qlcb.show_list

while true
    puts "1. Them moi can bo."
    puts "2. Tim kiem theo ten."
    puts "3. Hien thi danh sach can bo."
    puts "4. Thoat."
    print "Choose your option: "
    option208 = gets.to_i
    case option208
    when 1
        puts "Nhap thong tin can bo:"
        print "Nhap ten: "
        name208 = gets
        print "Nhap tuoi: "
        age208 = gets
        # gender208 = gets
        option_gender208 = 0
        while option_gender208 <1 || option_gender208 >4
            puts "1. Nam."
            puts "2. Nu."
            puts "3. Khac."
            print "Chon gioi tinh: "
            option_gender208 = gets.to_i
            case option_gender208
            when 1
                gender208 = "Nam"
            when 2
                gender208 = "Nu"
            when 3
                gender208 = "Khac"
            end    
        end
        print "Nhap dia chi: "
        address208 = gets
        option_canbo208 = 0
        while option_canbo208<1 || option_canbo208>4
            puts "1. Cong Nhan."
            puts "2. Ky Su."
            puts "3. Nhan Vien."
            print "Chon loai can bo: "
            option_canbo208 = gets.to_i
            case option_canbo208
            when 1
                print "Nhap bac208: "
                bac208 = gets
                qlcb208.themCB(CongNhan.new(name208, age208, gender208, address208, bac208))
            when 2
                print "Nhap Nganh Dao Tao: "
                nganhDaoTao208 = gets
                qlcb208.themCB(KySu.new(name208, age208, gender208, address208, nganhDaoTao208))
            when 3
                print "Nhap cong viec: "
                congViec208 = gets
                qlcb208.themCB(NhanVien.new(name208, age208, gender208, address208, congViec208))
            end
        end              
        when 2
            print "Nhap ten can tim: "
            keyword208 = gets
            rs208 = qlcb208.timKiem(keyword208)
            rs208.each {|cb208| cb208.show}
        when 3
            puts "Danh sach can bo: "
            qlcb208.show_list
        when 4
            break
    end
end

    
    