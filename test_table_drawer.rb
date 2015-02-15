require_relative "table_drawer"

require "minitest/autorun"

class TestTableDrawer < Minitest::Test
  def test_draw_table
    table = [
      ["", 2, 3, 9999],
      [3, 2, 2, 2],
    ]
    expected = "|      | 2    | 3    | 9999 |\n" +
               "| 3    | 2    | 2    | 2    |"
    actual = TableDrawer.draw_table table
    assert_equal expected, actual
  end
end
