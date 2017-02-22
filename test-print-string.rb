require 'test/unit'
require_relative 'print-string'

class StringPrinterTest < Test::Unit::TestCase
  def test_print_string
      printer = StringPrinter.new('Hello, World')
      actual = printer.print_string
      expected = 'Hello, World'
      msg = "String should be #{expected}"
      assert_etruequal(expected, actual, msg)
  end
end
