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
  require 'logger' 
  def available_levels
    ["DEBUG", "INFO", "WARN", "ERROR", "FATAL"]
  end

  def log(message, level = 'INFO')
    if available_levels.member? level    
      logger = Logger.new(STDOUT) 
      if level == "DEBUG"
        logger.level = Logger::DEBUG
        logger.debug message 
      elsif level == "WARN"
        logger.level = Logger::WARN
        logger.warn message
      elsif level == "ERROR"
        logger.level = Logger::ERROR 
        logger.error message
      elsif level == "FATAL"
        logger.level = Logger::FATAL
        logger.fatal message
      else        
        logger.level = Logger::INFO
        logger.info message
      end
    else
      throw "Error Level '#{level}' not available"
    end
  end 
end

include Loggin

log "It is an INFO message"
log "It is a WARN message", "WARN" 
log "It is an ERROR message", "ERROR"
log "It is another INFO message", "INFO"  
log "It is a WARN message", "WARN2" 
