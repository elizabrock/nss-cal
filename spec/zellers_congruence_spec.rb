require_relative '../lib/zellers_congruence'

RSpec.describe ZellersCongruence do
  describe '.modified_month' do
    it 'returns 13 for January' do
      ZellersCongruence.modified_month(2012, 01).should == 13
    end

    it 'return 14 for February' do
      ZellersCongruence.modified_month(2012, 02).should == 14
    end

    it 'returns 3 for March' do
      ZellersCongruence.modified_month(2012, 03).should == 3
    end
  end

  describe '.modified_year' do
    it 'returns 1999 for January 2000' do
      ZellersCongruence.modified_year(2000, 01).should == 1999
    end

    it 'returns 2011 for February 2012' do
      ZellersCongruence.modified_year(2012, 02).should == 2011
    end

    it 'returns 1805 for March 1805' do
      ZellersCongruence.modified_year(1805, 03).should == 1805
    end
  end

  describe '.calculate' do
    it 'returns 1 for 2014/03/02' do
      ZellersCongruence.calculate(2014, 03, 02).should == 1
    end

    it 'returns 1 for 2012/01/01' do
      ZellersCongruence.calculate(2012, 01, 01).should == 1
    end

    it 'returns 1 for 2012/01/12' do
      ZellersCongruence.calculate(2012, 01, 12).should == 5
    end

    it 'returns 1 for 1799/02/01' do
      ZellersCongruence.calculate(1799, 02, 01).should == 6
    end

    it 'returns 1 for 2000/11/01' do
      ZellersCongruence.calculate(2000, 11, 01).should == 4
    end
  end
end
