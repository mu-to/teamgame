# game.rb : game main
#
#
#

$:.unshift File.dirname(__FILE__)

require 'myfunc.rb'
require 'player.rb'
require 'board.rb'

class Game
  def run
    p "hello"
    myfunc
  end

  def initialize
    @my = Myfunc.new
    # @player1 = Player.new
    # @player2 = Player.new
    # @board = Board.new
  end

  def somefunc
    p "do nothing"
  end

  def myfunc
    @my.hello
  end

  def game_loop
    while(1)
      p1move = @player1.getmove
      @board.doit(p1move)
      p "player1 win" if(@borad.is_p1win)

      p2move = @player2.getmove
      @board.doit(p2move)
      p "player1 win" if(@borad.is_p1win)

      # we can not stop ..
    end
  end

end
