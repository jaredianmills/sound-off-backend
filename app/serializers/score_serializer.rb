class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :total
  belongs_to :user
end
