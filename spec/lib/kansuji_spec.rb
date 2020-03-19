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
  
end
