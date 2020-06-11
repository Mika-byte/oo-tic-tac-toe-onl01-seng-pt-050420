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
   puts " #{@board[0]"} | #{@board[1]} | #{@board[2]}
   puts "-------"
    puts " #{@board[3]"} | #{@board[4]} |
   puts "--------"
   puts " #{@board[6]"} | #{@board[7]} | #{@board[8]}"
 end
  




































end
