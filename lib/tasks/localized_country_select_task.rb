$VERBOSE = nil
Dir["#{Gem.searcher.find('localized_country_select').full_gem_path}/lib/tasks/*.rake"].each { |ext| load ext }