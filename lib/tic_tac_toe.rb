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

def position_taken?(board , index)
    if board[index] == " " || board[index] == "" || board[index] == nil
        return false
    else
        return true
    end
end

# code your #valid_move? method here
def valid_move?(board, index)
    if index.between?(0,8) && (board[index] == " " || board[index] == "" || board[index] == nil)
        return true
    else
        return false
    end
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.chomp
    input = input_to_index(input)
    truth = valid_move?(board,input)
    until truth
        puts "invalid move, Please enter 1-9:"
        input = gets.chomp
        input = input_to_index(input)
        truth = valid_move?(board,input)
    end
    move(board,input)
    display_board(board)
end
