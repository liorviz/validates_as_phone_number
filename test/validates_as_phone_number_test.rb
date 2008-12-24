require 'test/unit'

begin
  require File.dirname(__FILE__) + '/../../../../config/boot'
  require 'active_record'
  require 'validates_as_phone_number'
rescue LoadError
  require 'rubygems'
  require 'activerecord'
  require File.dirname(__FILE__) + '/../lib/validates_as_phone_number'
end

class TestRecord < ActiveRecord::Base
  def self.columns; []; end
  attr_accessor :phone_number
  validates_as_phone_number :phone_number, :allow_nil => false # false is default
end

class TestRecord2 < ActiveRecord::Base
  def self.columns; []; end
  attr_accessor :phone_number
  validates_as_phone_number :phone_number, :allow_nil => true
end

class ValidatesAsPhoneNumberTest < Test::Unit::TestCase

  def test_valid_phone_numbers
    phone_numbers = [
      '3219876',
      '800.321.9876',
      '8003219876',
      '321-9876',
      '800-321-9876',
      '321-9876x12345',
      '800-321-9876x1',
      '800-321-9876x 1',
      '800-321-9876x1234567',
      '800-321-9876 x1',
      '800-321-9876 x 1',
      '800-321-9876 x1234567',
      '(800)-321-9876',
      '(800) 321-9876'
      ]
    phone_numbers.each do |number|
      assert TestRecord.new(:phone_number => number).valid?, "#{number} should be valid."
    end
  end
  
  def test_invalid_phone_numbers
    phone_numbers = [
      '(800 321-9876',
      '800) 321-9876',
      '321-9876x1234567890234',
      '800-321-9876x',
      '800-321-98761',
      '800-321-9876 x',
      '800-321-9876 xa',
      '800a321-9876',
      '800-321-9876x12345678',
      '800-321-9876 x12345678'
      ]
    phone_numbers.each do |number|
      assert !TestRecord.new(:phone_number => number).valid?, "#{number} should be invalid."
    end
  end  
  
  def test_blank_phone_number_not_allowed
    assert !TestRecord.new(:phone_number => nil).valid?, "Blank phone number should be invalid."
    assert !TestRecord.new(:phone_number => '').valid?, "Blank phone number should be invalid."
  end  
  
  def test_blank_phone_number_allowed
    assert TestRecord2.new(:phone_number => nil).valid?, "Blank phone number should be valid."
    assert TestRecord2.new(:phone_number => '').valid?, "Blank phone number should be valid."
  end  
  
end

