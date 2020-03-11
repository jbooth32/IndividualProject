class StaticPagesController < ApplicationController
  def home
  end

  def add
  end

  def help
  end
  
  def randgame
      winner = [true, false].sample
      loser = (0..19).to_a.shuffle.first
      if winner
        @result = [21,loser]
      else
        @result = [loser,21]
      end
  end
end
