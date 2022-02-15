class Score < ApplicationRecord
    validates :score, presence: true, numericality: { greater_than_or_equal_to: 0 }

    belongs_to :user
    default_scope { order(score: :desc, created_at: :desc)}
end
