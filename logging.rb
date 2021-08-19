=begin
Activity: Logging module
Statement: Create a module to introduce logging features to any Ruby application. 
This module contains two methods:
- log(message): Logs the message to the standard output with INFO level.
- log(message, level): Logs the message to the standard output with the specific level. 
Available levels are: DEBUG, INFO, WARN, ERROR, FATAL. 
If the specific level is not part of the list of available level, then the method should 
throw an error message.
Then, modify the Football Tournament exercise from the previous level and add logging 
to the method that displays the final standings and all the constructors.
=end

module Loggin
  
  def log(message)
    puts "*** INFO  -- ***: #{message}"
  end

  def log2(message, level)
  	available_levels = ["DEBUG", "INFO", "WARN", "ERROR", "FATAL"]
  	if available_levels.member? level
    	puts "*** #{level}  -- ***: #{message}" 
    else
    	puts "Error Level '#{level}' not available"
    end
  end  
end

include Loggin


log "It is an INFO message"
log2 "It is a WARN message", "WARN" 
log2 "It is a WARN message", "WARM" 
log2 "It is a DEBUG message", "DEBUG" 