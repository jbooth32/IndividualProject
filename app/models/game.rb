class ScoreValidator < ActiveModel::Validator
  def validate(game)
    if game.w_score <= game.l_score
      game.errors[:base] << "Winner must score more than loser"
    end
    if game.l_score < 0
      game.errors[:base] << "Scores must be positive"
    end
  end
end

class Game < ApplicationRecord
    validates :winner, presence: true, length: {maximum: 30}
    validates :loser, presence: true, length: {maximum: 30}
    VALID_DATE_REGEX = /\A(((0)[0-9])|((1)[0-2]))(\/)([0-2][0-9]|(3)[0-1])(\/)\d{2}/
    validates :date, format: { with: VALID_DATE_REGEX}
    validates_with ScoreValidator

end
