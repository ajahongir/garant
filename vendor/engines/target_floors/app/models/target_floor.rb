class TargetFloor < ActiveRecord::Base

  belongs_to :target
  belongs_to :image
  has_many :flats, :dependent => :destroy

  acts_as_indexed :fields => [:data]
  validates_uniqueness_of :floor, :scope => :target_id
  validates_presence_of :floor
  validates :target_id, :presence => true
  validates :image_id, :presence => true
end

