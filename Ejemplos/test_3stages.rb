require "./leap_year"
require "date"

class User
  def initialize(name, birthday)
    @name = name
    @birthday = birthday
  end

  def born_in_leap_year?
    leap_year?(Date.parse(@birthday).year)
  end
end

if $0 == __FILE__
  def assert_equal(expected, actual, method)
    if expected == actual
      puts "#{method} returned #{actual} as expected."
    else
      puts "KAPUTT! #{method} did not return #{expected} as expected, but actually returned #{actual}."
    end
  end

  data = {
    "2001-01-01" => false,
    "1900-01-01" => false,
    "2000-01-01" => true,
    "2004-01-01" => true
  }

  data.each do |date, expected|
    #setup
    user = User.new("Jennifer", date)
    #execution
    actual = user.born_in_leap_year?
    #assertion
    assert_equal(expected, actual, "born_in_leap_year? for a User born on #{date}")
  end
end

=begin
These three stages often can be found in tests:

Setup
Execution
Assertion
  
=end