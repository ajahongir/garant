class TargetFloor < ActiveRecord::Base

  belongs_to :target
  belongs_to :image

  acts_as_indexed :fields => [:data]

  validates :data, :presence => true, :uniqueness => true
  validates :target_id, :presence => true
  validates :image_id, :presence => true
end

