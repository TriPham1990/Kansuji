class ConvertBetweenKanjiAndNumber
  CHECKKANJI = { 10**68 => "無量大数", 10**64 => "不可思議", 10**60 => "那由他", 10**56 => "阿僧祇", 10**52 => "恒河沙",
               10**48 => "極", 10**44 => "載", 10**40 => "正", 10**36 => "澗", 10**32 => "溝", 10**28 => "穣",
               10**24 => "𥝱", 10**20 => "垓", 10**16 => "京", 10**12 => "兆", 10**8 => "億" ,10000 => "万", 1000 => "千",
               100 => "百", 10 => "十",  9 => "九", 8 => "八", 7 => "七", 6 => "六", 5 => "五",4 => "四", 3 => "三", 2 => "二", 1 => "一", 0 => "〇"}
  BIGKANJI = { 10**52 => "恒河沙", 10**56 => "阿僧祇", 10**60 => "那由他", 10**64 => "不可思議", 10**68 => "無量大数" }

  def self.convert(number)
    checkNumberBigOrSmall = number.to_s.length
    exponential = checkNumberBigOrSmall < 5 ? number.to_s.length - 1 : (checkNumberBigOrSmall - 1) - ((checkNumberBigOrSmall - 1) % 4)
    divisor = 10**exponential
    surplus = number % divisor
    check = (number - surplus) / divisor

    return CHECKKANJI[0] if number == 0
    return CHECKKANJI[number] if number < 10
    if check == 1 && checkNumberBigOrSmall < 5
      surplus == 0 ? CHECKKANJI[divisor] : CHECKKANJI[divisor] + convert(surplus)
    else
      surplus == 0 ? convert(check) + CHECKKANJI[divisor] : convert(check) + CHECKKANJI[divisor] + convert(surplus) 
    end
  end

  def self.convertKanjiToNumber(string)
    CHECKKANJI.each do |key, value|
      return key if string == value
    end

    arrayKanji = string.chars

    BIGKANJI.each do |key, value|
      if string.include?(value)
        firstIndex = string.index(value)
        (1...string.length).each {|i| arrayKanji[firstIndex] += arrayKanji.delete_at(firstIndex + i)}
      end
    end

    CHECKKANJI.each do |key, value|
      if arrayKanji.include?(value)
        index = arrayKanji.index(value)
        newArray = arrayKanji.slice!(0, index + 1)
        return key + convertKanjiToNumber(arrayKanji.join) if newArray.length == 1
        newArray.pop if newArray.length > 1
        return convertKanjiToNumber(newArray.join) * key if arrayKanji.length == 0
        return convertKanjiToNumber(newArray.join) * key + convertKanjiToNumber(arrayKanji.join)
      end
    end
  end
end