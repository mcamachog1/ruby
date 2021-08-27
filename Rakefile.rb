Dir.glob('lib/tasks/*.rake').each { |r| import r }

task default: %w[test]

task :test do 
	ruby "csv_read.rb"	
end
