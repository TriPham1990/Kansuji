require "spec_helper"
require "kansuji"

#TODO: TDD

describe ConvertBetweenKanjiAndNumber do

  describe ".convert" do
    it 'return 〇 of 0' do
      number = ConvertBetweenKanjiAndNumber.convert(0)
      expect(number).to eq("〇")
    end
  end

  describe ".convert" do
    it 'return 一 of 1' do
      number = ConvertBetweenKanjiAndNumber.convert(1)
      expect(number).to eq("一")
    end
  end

  describe ".convert" do
    it 'return 三 of 3' do
      number = ConvertBetweenKanjiAndNumber.convert(3)
      expect(number).to eq("三")
    end
  end

  describe ".convert" do
    it 'return 七 of 7' do
      number = ConvertBetweenKanjiAndNumber.convert(7)
      expect(number).to eq("七")
    end
  end

  describe ".convert" do
    it 'return 十 of 10' do
      number = ConvertBetweenKanjiAndNumber.convert(10)
      expect(number).to eq("十")
    end
  end

  describe ".convert" do
    it 'return 十一 of 11' do
      number = ConvertBetweenKanjiAndNumber.convert(11)
      expect(number).to eq("十一")
    end
  end

  describe ".convert" do
    it 'return 二十 of 20' do
      number = ConvertBetweenKanjiAndNumber.convert(20)
      expect(number).to eq("二十")
    end
  end

  describe ".convert" do
    it 'return 二十三 of 23' do
      number = ConvertBetweenKanjiAndNumber.convert(23)
      expect(number).to eq("二十三")
    end
  end

  describe ".convert" do
    it 'return 九十九 of 99' do
      number = ConvertBetweenKanjiAndNumber.convert(99)
      expect(number).to eq("九十九")
    end
  end

  describe ".convert" do
    it 'return 百 of 100' do
      number = ConvertBetweenKanjiAndNumber.convert(100)
      expect(number).to eq("百")
    end
  end

  describe ".convert" do
    it 'return 百一 of 101' do
      number = ConvertBetweenKanjiAndNumber.convert(101)
      expect(number).to eq("百一")
    end
  end

  describe ".convert" do
    it 'return 百十 of 110' do
      number = ConvertBetweenKanjiAndNumber.convert(110)
      expect(number).to eq("百十")
    end
  end

  describe ".convert" do
    it 'return 九百 of 900' do
      number = ConvertBetweenKanjiAndNumber.convert(900)
      expect(number).to eq("九百")
    end
  end

  describe ".convert" do
    it 'return 九百九十九 of 999' do
      number = ConvertBetweenKanjiAndNumber.convert(999)
      expect(number).to eq("九百九十九")
    end
  end

  describe ".convert" do
    it 'return 千 of 1000' do
      number = ConvertBetweenKanjiAndNumber.convert(1000)
      expect(number).to eq("千")
    end
  end

  describe ".convert" do
    it 'return 千百 of 1100' do
      number = ConvertBetweenKanjiAndNumber.convert(1100)
      expect(number).to eq("千百")
    end
  end

  describe ".convert" do
    it 'return 九千九百九十九 of 9999' do
      number = ConvertBetweenKanjiAndNumber.convert(9999)
      expect(number).to eq("九千九百九十九")
    end
  end

  describe ".convert" do
    it 'return 一万 of 10000' do
      number = ConvertBetweenKanjiAndNumber.convert(10000)
      expect(number).to eq("一万")
    end
  end

  describe ".convert" do
    it 'return 一万十 of 10010' do
      number = ConvertBetweenKanjiAndNumber.convert(10010)
      expect(number).to eq("一万十")
    end
  end

  describe ".convert" do
    it 'return 一万一 of 10001' do
      number = ConvertBetweenKanjiAndNumber.convert(10001)
      expect(number).to eq("一万一")
    end
  end

  describe ".convert" do
    it 'return 二万一 of 20001' do
      number = ConvertBetweenKanjiAndNumber.convert(20001)
      expect(number).to eq("二万一")
    end
  end

  describe ".convert" do
    it 'return 九万九千九百九十九 of 99999' do
      number = ConvertBetweenKanjiAndNumber.convert(99999)
      expect(number).to eq("九万九千九百九十九")
    end
  end

  describe ".convert" do
    it 'return 十万 of 100000' do
      number = ConvertBetweenKanjiAndNumber.convert(100000)
      expect(number).to eq("十万")
    end
  end

  describe ".convert" do
    it 'return 九億九千九百九十九万九千九百九十九 of 999999999' do
      number = ConvertBetweenKanjiAndNumber.convert(999999999)
      expect(number).to eq("九億九千九百九十九万九千九百九十九")
    end
  end

  describe ".convert" do
    it 'return 八億五千四百九十四万七千六百二十五 of 854947625' do
      number = ConvertBetweenKanjiAndNumber.convert(854947625)
      expect(number).to eq("八億五千四百九十四万七千六百二十五")
    end
  end

  describe ".convert" do
    it 'return 五千四百九十四万七千六百二十五 of 54947625' do
      number = ConvertBetweenKanjiAndNumber.convert(54947625)
      expect(number).to eq("五千四百九十四万七千六百二十五")
    end
  end

  describe ".convert" do
    it 'return 四百九十四万七千六百二十五 of 4947625' do
      number = ConvertBetweenKanjiAndNumber.convert(4947625)
      expect(number).to eq("四百九十四万七千六百二十五")
    end
  end

  describe ".convert" do
    it 'return 一兆 of 1000000000000' do
      number = ConvertBetweenKanjiAndNumber.convert(1000000000000)
      expect(number).to eq("一兆")
    end
  end

  describe ".convert" do
    it 'return 九千九百九十九億九千九百九十九万九千九百九十九 of 999999999999' do
      number = ConvertBetweenKanjiAndNumber.convert(999999999999)
      expect(number).to eq("九千九百九十九億九千九百九十九万九千九百九十九")
    end
  end

  describe ".convert" do
    it 'return 九千九百九十九兆九千九百九十九億九千九百九十九万九千九百九十九 of 9999999999999999' do
      number = ConvertBetweenKanjiAndNumber.convert(9999999999999999)
      expect(number).to eq("九千九百九十九兆九千九百九十九億九千九百九十九万九千九百九十九")
    end
  end

  describe ".convert" do
    it 'return 九十兆 of 90000000000000' do
      number = ConvertBetweenKanjiAndNumber.convert(90000000000000)
      expect(number).to eq("九十兆")
    end
  end

  describe ".convert" do
    it 'return 九千九百九十九溝九千九百九十九穣九千九百九十九𥝱九千九百九十九垓九千九百九十九京九千九百九十九兆九千九百九十九億九千九百九十九万九千九百九十九 of 999999999999999999999999999999999999' do
      number = ConvertBetweenKanjiAndNumber.convert(999999999999999999999999999999999999)
      expect(number).to eq("九千九百九十九溝九千九百九十九穣九千九百九十九𥝱九千九百九十九垓九千九百九十九京九千九百九十九兆九千九百九十九億九千九百九十九万九千九百九十九")
    end
  end

  describe ".convert" do
    it 'return 一不可思議 of 10000000000000000000000000000000000000000000000000000000000000000' do
      number = ConvertBetweenKanjiAndNumber.convert(10000000000000000000000000000000000000000000000000000000000000000)
      expect(number).to eq("一不可思議")
    end
  end

  #test kanji to number

  describe ".convertKanjiToNumber" do
    it 'return 90000000000000 of 九十兆' do
      number = ConvertBetweenKanjiAndNumber.convertKanjiToNumber("九十兆")
      expect(number).to eq(90000000000000)
    end
  end

  describe ".convertKanjiToNumber" do
    it 'return 1 of 一' do
      number = ConvertBetweenKanjiAndNumber.convertKanjiToNumber("一")
      expect(number).to eq(1)
    end
  end

  describe ".convertKanjiToNumber" do
    it 'return 11 of 十一' do
      number = ConvertBetweenKanjiAndNumber.convertKanjiToNumber("十一")
      expect(number).to eq(11)
    end
  end

  describe ".convertKanjiToNumber" do
    it 'return 214352345 of 二億千四百三十五万二千三百四十五' do
      number = ConvertBetweenKanjiAndNumber.convertKanjiToNumber("二億千四百三十五万二千三百四十五")
      expect(number).to eq(214352345)
    end
  end

  describe ".convertKanjiToNumber" do
    it 'return 312 of 三百十二' do
      number = ConvertBetweenKanjiAndNumber.convertKanjiToNumber("三百十二")
      expect(number).to eq(312)
    end
  end

  describe ".convertKanjiToNumber" do
    it 'return 5412 of 五千四百十二' do
      number = ConvertBetweenKanjiAndNumber.convertKanjiToNumber("五千四百十二")
      expect(number).to eq(5412)
    end
  end

  describe ".convertKanjiToNumber" do
    it 'return 62321 of 六万二千三百二十一' do
      number = ConvertBetweenKanjiAndNumber.convertKanjiToNumber("五千四百十二")
      expect(number).to eq(62321)
    end
  end

end
