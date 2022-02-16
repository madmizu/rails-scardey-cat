class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :score, :created_at
  has_one :user
end
