def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
  
  def input_to_index(input)
  index = input.to_i - 1
  end
  
  def move(board, index, character = "X")
  board[index] = character
  board
  end

def valid_move?(board, index)
    if position_taken?(board, index) == false && index.between?(0,9) 
        true
    else
        false
    end
end

 def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
        false
    else 
        true
    end
 end

 def turn(board)
    puts "Please enter 1-9:"
 input = gets.strip
 index = input_to_index(input)
 if valid_move?(board, index) == true
    move(board, index, character = "X")
 else 
    valid_move?(board, index) == false
    turn(board)
 end
 display_board(board)
 end
