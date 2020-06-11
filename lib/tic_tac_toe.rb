require 'pry'
class TicTacToe

  attr_accessor :board
  
  WIN_COMBINATIONS = [
[0,1,2], # top_row 
[3,4,5], # middle_row 
[6,7,8], 
[0,3,6], 
[1,4,7], 
[2,5,8],  
[0,4,8], 
[6,4,2], 

]
  
  def initialize
    @board = Array.new(9, " ")
 end
 
def display_board
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
    input.to_i - 1 
  end
  
def move(index, token = "X")
   @board[index] = token
end

def position_taken?(index)
  @board[index] != " "
end

def valid_move?(index)
  !position_taken?(index) && index.between?(0, 8)
end

def turn_count
   counter = 0
   board.each do |pos|
      if pos == "X" || pos == "O"
         counter += 1
      end
   end
   counter
end

def current_player
   self.turn_count.odd? ? "0" : "X"
 end
 
 def turn
   puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
   if valid_move?(board, index)
      move(board, index, current_player(board))
      turn(board)
   end
   display_board(board)
end



























end
