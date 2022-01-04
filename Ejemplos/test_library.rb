require "date"
require "./leap_year"
require "./test"

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
  class UserTest < Test
    def test_not_born_in_leap_year_when_born_in_2001
      user = User.new("Jennifer", "2001-01-01")
      assert_false(user.born_in_leap_year?)
    end

    def test_not_born_in_leap_year_when_born_in_1900
      user = User.new("Jennifer", "1900-01-01")
      assert_false(user.born_in_leap_year?)
    end

    def test_born_in_leap_year_when_born_in_2000
      user = User.new("Jennifer", "2000-01-01")
      assert_true(user.born_in_leap_year?)
    end

    def test_born_in_leap_year_when_born_in_2004
      user = User.new("Jennifer", "2004-01-01")
      assert_true(user.born_in_leap_year?)
    end
  end

  test = UserTest.new
  test.run
end