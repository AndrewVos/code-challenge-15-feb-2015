class TableDrawer
  def self.draw_table table
    table = convert_cells_to_strings table
    maximum_item_width = find_widest_table_cell table

    table.map do |row|
      line = row.map do |i|
        i.ljust(maximum_item_width)
      end.join(" | ")
      "| #{line} |"
    end.join "\n"
  end

  private

    def self.convert_cells_to_strings table
      table.map do |row|
        row.map(&:to_s)
      end
    end

    def self.find_widest_table_cell table
      table.flatten.inject(0) do |result, cell|
        if cell.length > result
          cell.length
        else
          result
        end
      end
    end
end
