class ConvertBetweenKanjiAndNumber

  BASICKANJI = {
    0 => "〇", 1 => "一", 2 => "二", 3 => "三", 4 => "四",
    5 => "五", 6 => "六", 7 => "七", 8 => "八", 9 => "九",
    10 => "十", 100 => "百", 1000 => "千", 10000 => "万"
  }

  def self.convert(number)
    checkNumber(number)
  end

  def self.checkNumber(number)  
    divisor = 10**(number.to_s.length - 1)
    surplus = number % divisor
    check = (number - surplus) / divisor
    if check == number
      BASICKANJI[number]
    elsif check == 1
      surplus == 0 ? BASICKANJI[divisor] : BASICKANJI[divisor] + checkNumber(surplus)
    else
      surplus == 0 ? BASICKANJI[check] + BASICKANJI[divisor] : BASICKANJI[check] + BASICKANJI[divisor] + checkNumber(surplus)
    end
  end


  # def self.convertKanjiToNumber(kanji)
  #   kanjis = {}
  #   (0..99999999).each {|i| kanjis[i] = convert(i)}
  #   kanjis.invert[kanji]
  # end

end