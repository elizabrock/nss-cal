RSpec.describe "Years Integration" do
  it "outputs an appropriate error message for 1799" do
    output = `ruby cal.rb 1799`
    output.should == "Argument must be for a date between the years 1800 and 3000\n"
  end

  it "outputs an appropriate error message for 3001" do
    output = `ruby cal.rb 3001`
    output.should == "Argument must be for a date between the years 1800 and 3000\n"
  end

  it "prints an appropriate error message for poor arguments" do
    output = `ruby cal.rb 99`
    output.should == "Argument must be for a date between the years 1800 and 3000\n"
  end

  it "prints the first lines of 2015 correctly" do
    output = `ruby cal.rb 2015`
    n = 17
    output.split("\n")[n].should == `#{cal_command} 2015`.split("\n")[n]
  end

  it "matches the output from cal for 2012" do
    output = `ruby cal.rb 2012`
    output.should == `#{cal_command} 2012`
  end

  it "matches the output from cal for 3000" do
    output = `ruby cal.rb 3000`
    output.should == `#{cal_command} 3000`
  end

  it "matches the output from cal for 1800" do
    output = `ruby cal.rb 1800`
    output.should == `#{cal_command} 1800`
  end

  it "matches the output from cal for 2015" do
    output = `ruby cal.rb 2015`
    output.should == `#{cal_command} 2015`
  end

  it "matches the output from cal for 1900" do
    output = `ruby cal.rb 1900`
    output.should == `#{cal_command} 1900`
  end
end
