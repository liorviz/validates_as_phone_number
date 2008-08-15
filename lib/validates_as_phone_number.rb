#
# Made this a plugin because there was not one out there yet. (yes I did an exhaustive search)
#
# Licensed under a Creative Commons Attribution-ShareAlike 2.5 License
# http://creativecommons.org/licenses/by-sa/2.5/
# 

# Validation helper for ActiveRecord derived objects that cleanly and simply
# allows the model to check if the given string is a valid US phone number
# in the form 000-000-0000, 000-0000 (delimiter may be space, hyphen or period and area code can have parentheses).
# For extensions: 000-000-0000 x12345 or 000-0000 x1234567 
# Extensions can be up to 7 digits (valid with or without leading space before 'x')
#

module ActiveRecord
  module Validations
    module ClassMethods
      def validates_as_phone_number(*attr_names)
        regExpStr = '(([0-9]{3})|((\()([0-9]{3})(\))))?([\s\.-])?([0-9]{3})([\s\.-])?([0-9]{4})([\s\.-])?([x][0-9]{1,7})?'
        configuration = {
          :message   => 'is an invalid phone number',
          :with      => /^#{regExpStr}$/,
          :allow_nil => false }
          
        configuration.update(attr_names.pop) if attr_names.last.is_a?(Hash)
        
        configuration[:with] = /^(#{regExpStr})?$/ if configuration[:allow_nil]

        validates_format_of attr_names, configuration
      end
    end
  end
end

