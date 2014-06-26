RSpec.describe "Months Integration" do
  it "matches the output of cal for 02 1900 first line" do
    output = `ruby cal.rb 02 1900`
    output.split("\n")[0].should == `#{cal_command} 02 1900`.split("\n")[0]
  end

  it "matches the output of cal for 02 2012 last line" do
    output = `ruby cal.rb 02 2012`
    output.split("\n")[5].should == `#{cal_command} 02 2012`.split("\n")[5]
  end

  it "matches the output of cal for 12 1799" do
    output = `ruby cal.rb 12 1799`
    output.should == "Argument must be for a date between the years 1800 and 3000\n"
  end

  it "matches the output of cal for 01 3001" do
    output = `ruby cal.rb 01 3001`
    output.should == "Argument must be for a date between the years 1800 and 3000\n"
  end

  it "matches the output of cal for no arguments" do
    output = `ruby cal.rb`
    output.should == "You must provide a month and/or year\n"
  end

  it "matches the output of cal for 02 2012" do
    output = `ruby cal.rb 02 2012`
    output.should == `#{cal_command} 02 2012`
  end

  it "matches the output of cal for 01 2012" do
    output = `ruby cal.rb 01 2012`
    output.should == `#{cal_command} 01 2012`
  end

  it "matches the output of cal for 09 2012" do
    output = `ruby cal.rb 09 2012`
    output.should == `#{cal_command} 09 2012`
  end

  it "matches the output of cal for 02 2015" do
    output = `ruby cal.rb 01 2015`
    output.should == `#{cal_command} 01 2015`
  end

  it "matches the output of cal for 02 1900" do
    output = `ruby cal.rb 02 1900`
    output.should == `#{cal_command} 02 1900`
  end
end
