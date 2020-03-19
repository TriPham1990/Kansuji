class ConvertBetweenKanjiAndNumber

  BASICKANJI = {
    0 => "〇", 1 => "一", 2 => "二", 3 => "三", 4 => "四",
    5 => "五", 6 => "六", 7 => "七", 8 => "八", 9 => "九",
    10 => "十", 100 => "百", 1000 => "千"
  }

  def self.convert(number)
    if number <= 10
      BASICKANJI[number]
    elsif number < 100
      checkNumber(number, 10)
    elsif number < 1000
      checkNumber(number, 100)
    elsif number < 10000
      checkNumber(number, 1000)
    end
  end

  def self.checkNumber(number, divisor)
    if number <= 10
      BASICKANJI[number]
    else
      surplus = number % divisor
      number = (number - surplus) / divisor
      if number != 1
        surplus == 0 ? BASICKANJI[number] + BASICKANJI[divisor] : BASICKANJI[number] + BASICKANJI[divisor] + checkNumber(surplus, divisor / 10)
      else
        surplus == 0 ? BASICKANJI[divisor] : BASICKANJI[divisor] + checkNumber(surplus, divisor / 10)
      end
    end
  end


  def self.convertKanjiToNumber(kanji)
    kanjis = {}
    (0..9999).each {|i| kanjis[i] = convert(i)}
    kanjis.invert[kanji]
  end

end