#TODO: implement

class ConvertBetweenKanjiAndNumber

  BASICKANJI = {
    0 => "〇", 1 => "一", 2 => "二", 3 => "三", 4 => "四",
    5 => "五", 6 => "六", 7 => "七", 8 => "八", 9 => "九",
    10 => "十", 100 => "百"
  }

  def self.convert(number)
    BASICKANJI[number]
    # if number == 0
    #   "〇"
    # else
    #   "一"
    # end
  end      

end