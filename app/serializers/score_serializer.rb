class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :score, :created_at
  has_one :user
end
