#TODO: implement

class ConvertBetweenKanjiAndNumber

  BASICKANJI = {
    0 => "〇", 1 => "一", 2 => "二", 3 => "三", 4 => "四",
    5 => "五", 6 => "六", 7 => "七", 8 => "八", 9 => "九",
    10 => "十", 100 => "百"
  }

  def self.convert(number)
    if number <= 10
      BASICKANJI[number]
    elsif number < 100
      checkNumber(number, 10)
    elsif number < 1000
      checkNumber(number, 100)
    end
  end 

  def self.checkNumber(number, divisor)
    if number <= 10
      BASICKANJI[number]
    else
      surplus = number % divisor
      number = (number - surplus) / divisor
      if number != 1
        BASICKANJI[number] + BASICKANJI[divisor] + checkNumber(surplus, divisor / 10)
      else
        surplus == 0 ? BASICKANJI[divisor] : BASICKANJI[divisor] + checkNumber(surplus, divisor / 10)
      end
    end
  end

end