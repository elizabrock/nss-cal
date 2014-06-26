require_relative '../lib/year'

RSpec.describe Year do
  describe '.is_leap_year?' do
    it 'returns false for regular year (2013)' do
      Year.is_leap_year?(2013).should be_falsey
    end

    it 'returns true for a normal leap year (2012)' do
      Year.is_leap_year?(2012).should be_truthy
    end

    it 'returns true for a normal leap year (2016)' do
      Year.is_leap_year?(2016).should be_truthy
    end

    it 'returns false for a centure leap year (2016)' do
      Year.is_leap_year?(1900).should be_falsey
    end

    it 'returns true for a quadcentury leap year (2016)' do
      Year.is_leap_year?(1600).should be_truthy
    end
  end
end
