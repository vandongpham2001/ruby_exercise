puts "Họ tên: Phạm Văn Đông"
puts "Mã sinh viên: 1911505310208"

class PhanSo
    attr_accessor :tuSo, :mauSo
    def initialize(tuSo, mauSo)
        @tuSo = tuSo
        @mauSo = mauSo
    end
    def to_s
        return "#{@tuSo}/#{@mauSo}"
    end

    def + (object)
        tuSo = @tuSo * object.mauSo + object.tuSo*@mauSo
        # tuSo = self.tuSo * a2.mauSo + a2.tuSo*self.mauSo
        mauSo = @mauSo * object.mauSo
        ps = PhanSo.new(tuSo, mauSo)
        return RutGon(ps)
    end
    def - (object)
        tuSo = @tuSo * object.mauSo - object.tuSo*@mauSo
        mauSo = @mauSo * object.mauSo
        ps = PhanSo.new(tuSo, mauSo)
        return RutGon(ps)
    end
    def * (object)
        tuSo = @tuSo * object.tuSo
        mauSo = @mauSo * object.mauSo
        ps = PhanSo.new(tuSo, mauSo)
        return RutGon(ps)
    end
    def / (object)
        tuSo = @tuSo * object.mauSo
        mauSo = @mauSo * object.tuSo
        ps = PhanSo.new(tuSo, mauSo)
        return RutGon(ps)
    end

end

def UCLN(a, b)
    r=a%b
    return (r==0) ? b:UCLN(b,r)
end

def RutGon(ps)
    r = UCLN(ps.tuSo, ps.mauSo)
    if (ps.tuSo==0)
        return 0
    end
    if (ps.tuSo==ps.mauSo)
        return 1
    end
    if (r==1)
        return ps
    end
    tuSo = ps.tuSo/r
    mauSo = ps.mauSo/r
    return PhanSo.new(tuSo, mauSo)
end


def CongPhanSo(a1, a2)
    tuSo = a1.tuSo * a2.mauSo + a2.tuSo*a1.mauSo
    mauSo = a1.mauSo * a2.mauSo
    ps = PhanSo.new(tuSo, mauSo)
    return RutGon(ps)
end

def TruPhanSo(a1, a2)
    tuSo = a1.tuSo * a2.mauSo - a2.tuSo*a1.mauSo
    mauSo = a1.mauSo * a2.mauSo
    ps = PhanSo.new(tuSo, mauSo)
    return RutGon(ps)
end

def NhanPhanSo(a1, a2)
    tuSo = a1.tuSo * a2.tuSo
    mauSo = a1.mauSo * a2.mauSo
    ps = PhanSo.new(tuSo, mauSo)
    return RutGon(ps)
end

def ChiaPhanSo(a1, a2)
    tuSo = a1.tuSo * a2.mauSo
    mauSo = a1.mauSo * a2.tuSo
    ps = PhanSo.new(tuSo, mauSo)
    return RutGon(ps)
end

puts "Nhap phan so thu nhat: "
print "Nhap tu so: "
tuSo1 = gets.to_i
mauSo1 = 0
while mauSo1 == 0
    print "Nhap mau so: "
    mauSo1 = gets.to_i
end
puts "Nhap phan so thu hai: "
print "Nhap tu so: "
tuSo2 = gets.to_i
mauSo2 = 0
while mauSo2 == 0
    print "Nhap mau so: "
    mauSo2 = gets.to_i
end

p1 = PhanSo.new(tuSo1, mauSo1)
p2 = PhanSo.new(tuSo2, mauSo2)

cong = CongPhanSo(p1, p2)
tru = TruPhanSo(p1, p2)
nhan = NhanPhanSo(p1, p2)
chia = ChiaPhanSo(p1, p2)

puts "OVERLOADING - Tinh toan 2 phan so #{p1} and #{p2}"
puts "Cong: #{p1 + p2}"
puts "Tru: #{p1 - p2}"
puts "Nhan: #{p1 * p2}"
puts "Chia: #{p1 / p2}"
puts "KHONG OVERLOADING - Tinh toan 2 phan so: #{p1} and #{p2}"
puts cong
puts tru
puts nhan
puts chia

# puts UCLN(0, 4)

