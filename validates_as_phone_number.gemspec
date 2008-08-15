Gem::Specification.new do |s|
  
  s.name    = 'validates_as_phone_number'
  s.version = '0.7.1'
  s.date    = '2008-08-15'
  
  s.summary     = "Rails gem to validate format of U.S. phone numbers"
  s.description = "Rails gem that implements an ActiveRecord validation helper called validates_as_phone_number which validates U.S. phone numbers"
  
  s.authors  = ['Wes Hays', 'John Dell']
  s.email    = 'gems@gbdev.com'
  s.homepage = 'http://github.com/spovich/validates_as_phone_number/wikis'
  
  s.files = Dir['CHANGELOG',
                'init.rb',
                'LICENSE',
                'Rakefile',
                'README',
                'lib/*',
                'test/*'].to_a

  s.test_files = Dir["test/*_test.rb"]

  s.has_rdoc = false
  
end
