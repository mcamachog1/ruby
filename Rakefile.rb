require "rake"
Dir.glob('lib/tasks/*.rake').each { |r| import r}

task default: %w[import:test]