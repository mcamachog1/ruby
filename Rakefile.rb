task default: %w[test]

task :test do 
	ruby "csv_read.rb"	
end