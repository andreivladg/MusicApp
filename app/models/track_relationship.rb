class TrackRelationship < ApplicationRecord
  belongs_to :user , class_name: "User"
  belongs_to :track , class_name: "Track"
  validates :track_id, presence:true
  validates :user_id, presence:true
end
