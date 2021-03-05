class AbstractSekil
  attr_reader :x, :y
  
  def initialize(x, y)
    @x, @y = x, y
  end

end
 
class AbstractIkiboyut < AbstractSekil
  def initialize(x, y)
    @x, @y = x, y
  end
end

class AbstractUcboyut < AbstractIkiboyut
  attr_reader :z
  
  def initialize(*coords, z)
    super(*coords)
    @z = z
  end
  
end

class Kare < AbstractIkiboyut
  
  def initialize()
    @x = x
    printf("Lütfen karenin kenar uzunluğu bilgisini giriniz:")
    @x = gets.chomp.to_i
  end
  
  def Alan()
     printf "Karenin alanı: #{@x*@x}"
  end
  
  def to_s     #Değerleri ekrana bastırmak için metot tasarlandı.
  Alan()
  end

end

class Cember < AbstractIkiboyut 
    
  def initialize()
    @y = y
    printf"Lütfen cemberin yarıçap uzunluğu bilgisini giriniz:"
    @y = gets.chomp.to_i
  end
  
  def Alan  
    printf "Çemberin alanı: #{Math::PI* @y**2}"
  end
  
  def to_s 
  Alan()
  end

end

class Kup < AbstractUcboyut 
    def initialize()
     @y, @z= y, z
     printf "Lütfen küpün kenar uzunluğunu giriniz:"
     @y = gets.chomp.to_i
     printf "Lütfen hacim arttırma miktarınız giriniz:"
     @z = gets.chomp.to_i
    end
    
    def Alan 
    printf "Küpün alanı: #{6* @y**2}\n"
    end
   
    def Hacim 
    printf "Küpün hacmi: #{1.33*Math::PI * @y**3}\n"
    printf "Küpün hacminin arttırılmış hali: #{@z* 1.33*Math::PI * @y**3}"
    end

    def to_s 
    Alan()
    Hacim()
    end

end

class Kure < AbstractUcboyut 
    def initialize() 
    @x, @z = x, z
    printf "Lütfen kurenin yarıçap uzunluğunu giriniz:"
    @x = gets.chomp.to_i
    printf "Lütfen hacim arttırma miktarınız giriniz:"
    @z = gets.chomp.to_i        
    end
    
    def Alan 
    printf "Kurenin alanı : #{4* Math::PI* @x**2}\n"   
    end
    
    def Hacim 
    printf "Kurenin hacmi : #{1.33*Math::PI * @x**3}\n"
    printf "Kurenin hacminin arttırılmış hali: #{@z* 1.33*Math::PI * @x**3}"
    end

    def to_s  
     Alan()
     Hacim()
    end
end

def main 
  k = Kare.new()   #nesne oluşturuldu
  puts k.to_s()

  c = Cember.new()   
  puts c.to_s()

  kp = Kup.new()
  puts kp.to_s()
  
  kr = Kure.new()
  puts kr.to_s()
end
main