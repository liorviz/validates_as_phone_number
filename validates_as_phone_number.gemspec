Gem::Specification.new do |s|
  
  s.name = 'validates_as_phone_number'
  s.version = '0.7.0'
  s.date = '2008-08-15'
  
  s.summary = "Validate format of U.S. phone numbers for Rails"
  s.description = "Implements an ActiveRecord validation helper called validates_as_phone_number which validates U.S. phone numbers"
  
  s.authors = ['Wes Hays', 'John Dell']
  s.email = 'github@gbdev.com'
  s.homepage = 'http://github.com/spovich/validates_as_phone_number/wikis'
  
  s.has_rdoc = false
  
  s.files = ["CHANGELOG",
             "LICENSE",
             "README",
             "Rakefile",
             "init.rb",
             "validates_as_phone_number.gemspec",
             "lib/validates_as_phone_number.rb",
             "test/validates_as_phone_number_test.rb"]
             
  s.test_files = ["test/validates_as_phone_number_test.rb"]
  
end
