module KnightsTravails
  class KnightMovesNode
    def initialize(position = initial_square)
      @position = position
      @up_left, @up_right = up_move(position)
      @down_left, @down_right = down_move(position)
      @right_left, @right_right = right_move(position)
      @left_left, @left_right = left_move(position)
    end

    def up_move(array)
      to_up = array[1] + 2 <= 7 ? array[1] + 2 : nil
      [[array[0] - 1, to_up], [array[0] + 1, to_up]]
    end

    def down_move(array)
      to_down = array[1] - 2
      [[array[0] - 1, to_down], [array[0] + 1, to_down]]
    end

    def right_move(array)
      to_right = array[0] + 2
      [[to_right, array[1] - 1], [to_right, array[1] + 1]]
    end

    def left_move(array)
      to_left = array[0] - 2
      [[to_left, array[1] - 1], [to_left, array[1] + 1]]
    end
  end

  class Knight
    attr_accessor :initial_square

    def initialize(initial_square, final_square)
      @initial_square = initial_square
      @final_square = final_square
    end

    def knight_trivails(initial_square = @initial_square, final_square = @final_square)
      if initial_square.min < 0 || initial_square.max > 7 || final_square.min < 0 || final_square.max > 7
        return "Error: Out of Range"
      end
    end
  end
end

travel = KnightsTravails::Knight.new([0, 0], [0, 8])
p travel.knight_trivails
