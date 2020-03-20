class ConvertBetweenKanjiAndNumber

  BASICKANJI = { 0 => "〇", 1 => "一", 2 => "二", 3 => "三", 4 => "四",5 => "五", 6 => "六",
                 7 => "七", 8 => "八", 9 => "九", 10 => "十", 100 => "百", 1000 => "千", 10000 => "万",
                 10**8 => "億", 10**12 => "兆", 10**16 => "京", 10**20 => "垓", 10**24 => "𥝱", 10**28 => "穣",
                 10**32 => "溝", 10**36 => "澗", 10**40 => "正", 10**44 => "載", 10**48 => "極", 10**52 => "恒河沙"}

  def self.convert(number)
    checkNumberBigOrSmall = number.to_s.length
    exponential = checkNumberBigOrSmall < 5 ? number.to_s.length - 1 : checkNumberBigOrSmall - (checkNumberBigOrSmall % 4)
    divisor = 10**exponential
    surplus = number % divisor
    check = (number - surplus) / divisor

    if number < 10
      BASICKANJI[number]
    elsif check == 1
      surplus == 0 ? BASICKANJI[divisor] : BASICKANJI[divisor] + convert(surplus)
    else
      surplus == 0 ? convert(check) + BASICKANJI[divisor] : convert(check) + BASICKANJI[divisor] + convert(surplus) 
    end
  end

  def self.convertKanjiToNumber(kanji)
    kanjis = {}
    number = 10**52
    (0..number).each {|i| kanjis[i] = convert(i)}
    kanjis.invert[kanji]
  end

end