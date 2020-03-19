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
    else
      surplus = number % 10
      number = (number - surplus) / 10
      if number != 1
        BASICKANJI[number] + BASICKANJI[10] + BASICKANJI[surplus]
      else
        BASICKANJI[10] + BASICKANJI[surplus]
      end
    end
  end      

end