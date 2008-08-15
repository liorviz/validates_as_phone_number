Gem::Specification.new do |s|
  
  s.name    = 'validates_as_phone_number'
  s.version = '0.7.3'
  s.date    = '2008-08-15'
  
  s.summary     = 'Rails gem to validate format of U.S. phone numbers'
  s.description = 'Rails gem that implements an ActiveRecord validation helper called validates_as_phone_number which validates U.S. phone numbers'
  
  s.authors  = ['Wes Hays', 'John Dell']
  s.email    = 'gems@gbdev.com'
  s.homepage = 'http://github.com/gbdev/validates_as_phone_number'
  
  s.files = ['CHANGELOG',
             'LICENSE',
             'README',
             'Rakefile',
             'init.rb',
             'lib/validates_as_phone_number.rb',
             'test/validates_as_phone_number_test.rb']

  s.test_files = ['test/validates_as_phone_number_test.rb']

  s.has_rdoc = false
  
end
