class NewyearController < ApplicationController
  def index
		now = Time.now
		#@newyear = true
		@newyear= now.month == 1 and now.day == 1
  end
end
