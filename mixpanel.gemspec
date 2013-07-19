Gem::Specification.new do |s|
  s.name             = 'mixpanel-client'
  s.version          = '0.0.1'
  s.date             = '2013-07-18'
  s.homepage         = 'https://github.com/Opus1no2/mixpanel-client'
  s.summary          = 'Simple API client for Mixpanel'
  s.description      = 'Provides a simple interface for loading data to Mixpanel'
  s.authors          = ['Travis Tillotson']
  s.email            = ['tillotson.travis@gmail.com']
  s.extra_rdoc_files = ["README.md"]
  s.files            = ["lib/mixpanel-client.rb"]
  s.test_files       = ["spec/mixpanel_spec.rb"]
  s.license          = 'MIT'
  
  s.add_dependency 'faraday', '~> 0.8.0'
  s.add_dependency 'faraday_middleware', '~> 0.9.0'
end