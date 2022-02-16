class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :username, :score, :created_at
end
