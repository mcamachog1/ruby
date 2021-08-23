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
    logger = Logger.new(STDOUT)
    if available_levels.member? level    
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
      begin
        throw "Error: Level '#{level}' not available"
      rescue
        logger.level = Logger::ERROR 
        logger.error "Error: Level '#{level}' not available"
      end
    end
  end 
end