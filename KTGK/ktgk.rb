puts "Họ tên: Phạm Văn Đông"
puts "Mã sinh viên: 1911505310208"

class PTGT
    attr_accessor :id208, :hangSX208, :namSX208, :dongXe208, :giaBan208, :bienSo208, :mauXe208
    def initialize(id208, hangSX208, namSX208, dongXe208, giaBan208, bienSo208, mauXe208)
        @id208 = id208
        @hangSX208 = hangSX208
        @namSX208 = namSX208
        @dongXe208 = dongXe208
        @giaBan208 = giaBan208
        @bienSo208 = bienSo208
        @mauXe208 = mauXe208
    end
    def show
        puts "id: #{@id208}"
        puts "Hang SX: #{@hangSX208}"
        puts "Nam SX: #{@namSX208}"
        puts "Dong Xe: #{@dongXe208}"
        puts "Gia Ban: #{@giaBan208}"
        puts "Bien So: #{@bienSo208}"
        puts "Mau Xe: #{@mauXe208}"
    end
end

class Oto < PTGT
    attr_accessor :soChoNgoi208, :kieuDongCo208, :nhienLieu208, :soTuiKhi208, :ngayDangKiem208
    def initialize(id208, hangSX208, namSX208, dongXe208, giaBan208, bienSo208, mauXe208, soChoNgoi208, kieuDongCo208, nhienLieu208, soTuiKhi208, ngayDangKiem208)
        super(id208, hangSX208, namSX208, dongXe208, giaBan208, bienSo208, mauXe208)
        @soChoNgoi208 = soChoNgoi208
        @kieuDongCo208 = kieuDongCo208
        @nhienLieu208 = nhienLieu208
        @soTuiKhi208 = soTuiKhi208
        @ngayDangKiem208 = ngayDangKiem208
    end
    def show
        super
        puts "So Cho Ngoi: #{@soChoNgoi208}"
        puts "Kieu Dong Co: #{@kieuDongCo208}"
        puts "Nhien Lieu: #{@nhienLieu208}"
        puts "So Tui Khi: #{@soTuiKhi208}"
        puts "Ngay Dang Kiem: #{@ngayDangKiem208}"
    end
end

class XeMay < PTGT
    attr_accessor :congSuat208, :dungTichBinhXang208
    def initialize(id208, hangSX208, namSX208, dongXe208, giaBan208, bienSo208, mauXe208, congSuat208, dungTichBinhXang208)
        super(id208, hangSX208, namSX208, dongXe208, giaBan208, bienSo208, mauXe208)
        @congSuat208 = congSuat208
        @dungTichBinhXang208 = dungTichBinhXang208
    end
    def show
        super
        puts "Cong Suat: #{@congSuat208}"
        puts "Dung Tich Binh Xang: #{@dungTichBinhXang208}"
    end
end

class XeTai < PTGT
    attr_accessor :trongTai208
    def initialize(id208, hangSX208, namSX208, dongXe208, giaBan208, bienSo208, mauXe208, trongTai208)
        super(id208, hangSX208, namSX208, dongXe208, giaBan208, bienSo208, mauXe208)
        @trongTai208 = trongTai208
    end
    def show 
        super
        puts "Trong Tai: #{@trongTai208}"
    end
end

class QLPTGT
    attr_accessor :dsptgt208

    def initialize()
        @dsptgt208 = []
    end
    
    def themPTGT(ptgt208)
        @dsptgt208 << ptgt208
    end

    def timKiemByHangSX(keyword208)
        rs208 = @dsptgt208.select{|ptgt208| ptgt208 if ptgt208.hangSX208.upcase.include? keyword208.upcase}
        return rs208
    end

    def timKiemByMau(keyword208)
        rs208 = @dsptgt208.select{|ptgt208| ptgt208 if ptgt208.mauXe208.upcase.include? keyword208.upcase}
        return rs208
    end

    def timKiemByBienSo(keyword208)
        rs208 = @dsptgt208.select{|ptgt208| ptgt208 if ptgt208.bienSo208.upcase.include? keyword208.upcase}
        return rs208
    end

    def delete(id208)
        @dsptgt208.each do |pt|
            if pt.id208 == id208
                @dsptgt208.delete(pt)
                return true
            end
        end
        return false
    end

    def show_list
        @dsptgt208.each {|ptgt208| ptgt208.show}
    end
end

qlptgt208 = QLPTGT.new

while true
    puts "1. Them moi phuong tien giao thong."
    puts "2. Tim kiem theo hang san xuat."
    puts "3. Tim kiem theo mau xe."
    puts "4. Tim kiem theo bien so."
    puts "5. Hien thi danh sach phuong tien."
    puts "6. Xoa phuong tien giao thong."
    puts "7. Thoat."
    print "Choose your option: "
    option208 = gets.to_i
    case option208
    when 1
        puts "Nhap thong tin phuong tien:"
        print "Nhap id: "
        id208 = gets.to_i
        print "Nhap hang san xuat: "
        hangSX208 = gets
        print "Nhap nam san xuat: "
        namSX208 = gets.to_i
        print "Nhap dong xe: "
        dongXe208 = gets
        print "Nhap gia ban: "
        giaBan208 = gets
        print "Nhap mau xe: "
        mauXe208 = gets
        print "Nhap bien so: "
        bienSo208 = gets
        option_pt208 = 0
        while option_pt208<1 || option_pt208>4
            puts "1. O to."
            puts "2. Xe may."
            puts "3. Xe tai."
            print "Chon loai phuong tien: "
            option_pt208 = gets.to_i
            case option_pt208
            when 1
                print "Nhap so cho ngoi: "
                soChoNgoi208 = gets.to_i
                print "Nhap kieu dong co: "
                kieuDongCo208 = gets
                option_nhienLieu208 = 0
                while option_nhienLieu208 <1 || option_nhienLieu208 >2
                    puts "1. Xang."
                    puts "2. Dau."
                    print "Chon nhien lieu: "
                    option_nhienLieu208 = gets.to_i
                    case option_nhienLieu208
                    when 1
                        nhienLieu208 = "Xang"
                    when 2
                        nhienLieu208 = "Dau"
                    end    
                end
                print "Nhap so tui khi: "
                soTuiKhi208 = gets.to_i
                print "Nhap ngay dang kiem: "
                ngayDangKiem208 = gets
                qlptgt208.themPTGT(Oto.new(id208, hangSX208, namSX208, dongXe208, giaBan208, bienSo208, mauXe208, soChoNgoi208, kieuDongCo208, nhienLieu208, soTuiKhi208, ngayDangKiem208))
            when 2
                print "Nhap dung tich binh xang: "
                dungTichBinhXang208 = gets
                print "Nhap cong suat: "
                congSuat208 = gets
                qlptgt208.themPTGT(XeMay.new(id208, hangSX208, namSX208, dongXe208, giaBan208, bienSo208, mauXe208, congSuat208, dungTichBinhXang208))
            when 3
                print "Nhap trong tai: "
                trongTai208 = gets
                qlptgt208.themPTGT(XeTai.new(id208, hangSX208, namSX208, dongXe208, giaBan208, bienSo208, mauXe208, trongTai208))
            end
        end              
        when 2
            print "Nhap hang san xuat can tim: "
            keyword208 = gets
            rs208 = qlptgt208.timKiemByHangSX(keyword208)
            rs208.each {|pt208| pt208.show}
        when 3
            print "Nhap mau can tim: "
            keyword208 = gets
            rs208 = qlptgt208.timKiemByMau(keyword208)
            rs208.each {|pt208| pt208.show}
        when 4
            print "Nhap bien so can tim: "
            keyword208 = gets
            rs208 = qlptgt208.timKiemByBienSo(keyword208)
            rs208.each {|pt208| pt208.show}
        when 5
            puts "Danh sach phuong tien giao thong: "
            qlptgt208.show_list
        when 6
            print "Nhan id phuong tien can xoa: "
            delete208 = gets.to_i
            isDeleted208 = qlptgt208.delete(delete208)
            if (isDeleted208 == true)
                puts "Da xoa"
            else
                puts "Co loi. Xoa khong thanh cong"
            end
            # qlptgt208.show_list
        when 7
            break
    end
end