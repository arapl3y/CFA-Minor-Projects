require 'test/unit'
require_relative 'customer'

class CustomerTest < Test::Unit::TestCase
  def test_full_name
    customer = Customer.new('Peter', 'Koch')
    actual = customer.full_name
    expected = 'Peter Koch'
    msg = 'Full name should be Peter Koch'
    assert_equal(expected, actual, msg)
  end

  def test_full_name_only_first_name
    # test case
    customer = Customer.new('Adele', '')
    actual = customer.full_name
    # expected results
    expected = 'Adele'
    msg = 'Single name only should be Adele'
    # assertion
    assert_equal(expected, actual, msg)
  end
end
