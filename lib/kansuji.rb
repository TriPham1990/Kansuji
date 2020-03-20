class ConvertBetweenKanjiAndNumber

  BASICKANJI = { 0 => "〇", 1 => "一", 2 => "二", 3 => "三", 4 => "四",5 => "五", 6 => "六",
                 7 => "七", 8 => "八", 9 => "九", 10 => "十", 100 => "百", 1000 => "千", 10000 => "万",
                 10**8 => "億", 10**12 => "兆", 10**16 => "京", 10**20 => "垓", 10**24 => "𥝱", 10**28 => "穣",
                 10**32 => "溝", 10**36 => "澗", 10**40 => "正", 10**44 => "載", 10**48 => "極", 10**52 => "恒河沙",
                 10**56 => "阿僧祇", 10**60 => "那由他", 10**64 => "不可思議", 10**68 => "無量大数" }
  BIGKANJI = { 10**52 => "恒河沙", 10**56 => "阿僧祇", 10**60 => "那由他", 10**64 => "不可思議", 10**68 => "無量大数" }

  def self.convert(number)
    checkNumberBigOrSmall = number.to_s.length
    exponential = checkNumberBigOrSmall < 5 ? number.to_s.length - 1 : (checkNumberBigOrSmall - 1) - ((checkNumberBigOrSmall - 1) % 4)
    divisor = 10**exponential
    surplus = number % divisor
    check = (number - surplus) / divisor

    return BASICKANJI[0] if number == 0
    return BASICKANJI[number] if number < 10

    if check == 1 && checkNumberBigOrSmall < 5
      surplus == 0 ? BASICKANJI[divisor] : BASICKANJI[divisor] + convert(surplus)
    else
      surplus == 0 ? convert(check) + BASICKANJI[divisor] : convert(check) + BASICKANJI[divisor] + convert(surplus) 
    end
  end

  def self.convertKanjiToNumber(string)
    arrayKanji = string.chars
    
    BIGKANJI.each do |key, value|
      if string.include?(value)
        firstIndex = string.index(value)
        (1...check.length).each {|i| arrayKanji[firstIndex] += arrayKanji.delete_at(firstIndex - 1 + check.length)}
      end
    end

    sum_result = 0
    result = BASICKANJI.invert[arrayKanji[0]]
    (1...arrayKanji.length).each do |i|
      if BASICKANJI.invert[arrayKanji[i]] < 10
        puts result
        puts "1"
        sum_result += result
        result = BASICKANJI.invert[arrayKanji[i]]
      else
        if BASICKANJI.invert[arrayKanji[i]] > BASICKANJI.invert[arrayKanji[i - 1]]
          puts result
          puts "2"
          result *= BASICKANJI.invert[arrayKanji[i]]
        else
          puts result
          puts "3"
          sum_result += result
          result = BASICKANJI.invert[arrayKanji[i]]
        end
      end
    end
    return sum_result + result
  end

end

puts ConvertBetweenKanjiAndNumber.convertKanjiToNumber("二億千四百三十五万二千三百四十五")