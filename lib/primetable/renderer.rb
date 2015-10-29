module Primetable
  class Renderer
    NEWLINE = "\n"
    HYPHEN  = "-"

    def self.render(grid)
      new(grid: grid).render
    end

    def initialize(grid:, cell_padding: 1)
      @grid = grid
      @cell_padding = cell_padding
    end

    def render
      each_row do |row|
        row.each_with_index do |col, col_idx|
          print col.to_s.center(padding)

          if col_idx == 0
            print "|".center(padding - 1)
          end
        end

        print NEWLINE
      end
    end

    private
    def each_row(&block)
      @grid.each_with_index do |row, row_idx|
        if row_idx == 1
          puts [
            hyphenator(padding),
            "+",
            hyphenator((row.size - 1) * padding)
          ].join
        end

        yield row
      end
    end

    def padding
      @padding ||= @grid.last.last.to_s.size + @cell_padding
    end

    def hyphenator(count)
      HYPHEN * count
    end
  end
end