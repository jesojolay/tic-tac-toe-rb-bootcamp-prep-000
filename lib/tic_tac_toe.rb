def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input.to_i - 1
end

# code your move and move method here!
def move(board, index, current_player = "X")
  board[index] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

# code your #valid_move? method here
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end


def play(board)
    turn = 0
    while turn < 9
        turn(board)
        turn+=1
    end
end

def turn_count(board)
    counter = 0
board.each do |spot|
    if spot != " "
        counter += 1
    end
end
return counter
end

def current_player(board)
    if turn_count(board) == 0
        return "X"
    elsif turn_count(board).even?
        return "X"
    elsif turn_count(board).odd?
        return "O"

    end

end
