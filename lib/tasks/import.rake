# Example rake file structure
# Define a namespace for the task
namespace :import do
  # Give a description for the task
  desc "Import Games Played from CSV"
  task :test do 
    ruby "csv_read.rb"  
end 
end