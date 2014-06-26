require_relative '../lib/month'

RSpec.describe Month do
  describe "#name" do
    it "returns January for month 1" do
      Month.new(1, 2012).name.should == "January"
    end

    it "returns February for month 2" do
      Month.new(2, 2012).name.should == "February"
    end

    it "returns March for month 3" do
      Month.new(3, 2012).name.should == "March"
    end

    it "returns April for month 4" do
      Month.new(4, 2012).name.should == "April"
    end

    it "returns May for moth 5" do
      Month.new(5, 2012).name.should == "May"
    end

    it "returns June for month 6" do
      Month.new(6, 2012).name.should == "June"
    end

    it "returns July for month 7" do
      Month.new(7, 2012).name.should == "July"
    end

    it "returns August for month 8" do
      Month.new(8, 2012).name.should == "August"
    end

    it "returns September for month 9" do
      Month.new(9, 2012).name.should == "September"
    end

    it "returns October for month 10" do
      Month.new(10, 2012).name.should == "October"
    end

    it "returns November for month 11" do
      Month.new(11, 2012).name.should == "November"
    end

    it "returns December for month 12" do
      Month.new(12, 2012).name.should == "December"
    end
  end

  describe ".length" do
    it "returns  for january" do
      Month.new(1, 2012).length.should == 31
    end

    it "returns  for february regular" do
      Month.new(2, 2013).length.should == 28
    end

    it "returns  for february leapyear" do
      Month.new(2, 2012).length.should == 29
    end

    describe "length_month another regulae february leapyear" do
      Month.new(2, 2016).length.should == 29
    end

    describe "length_month february in century leapyear" do
      Month.new(2, 1900).length.should == 28
    end

    describe "length_month february in quadcentury leapyear" do
      Month.new(2, 1600).length.should == 29
    end

    it "returns 31 for march" do
      Month.new(3, 2012).length.should == 31
    end

    it "returns 30 for april" do
      Month.new(4, 2012).length.should == 30
    end

    it "returns 31 for may" do
      Month.new(5, 2012).length.should == 31
    end

    it "returns 30 for june" do
      Month.new(6, 2012).length.should == 30
    end

    it "returns 31 for july" do
      Month.new(7, 2012).length.should == 31
    end

    it "returns 31 for august" do
      Month.new(8, 2012).length.should == 31
    end

    it "returns 30 for september" do
      Month.new(9, 2012).length.should == 30
    end

    it "returns 31 for october" do
      Month.new(10, 2012).length.should == 31
    end

    it "returns 30 for november" do
      Month.new(11, 2012).length.should == 30
    end

    it "returns 31 for december" do
      Month.new(12, 2012).length.should == 31
    end
  end
end
