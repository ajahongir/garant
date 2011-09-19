class Target < ActiveRecord::Base
  has_many :events
  has_many :target_floors
  has_many :images, :through => :target_floors

  acts_as_indexed :fields => [:name]

  validates :name, :presence => true, :uniqueness => true

  def images
    image_id = TargetFloor.find_all_by_target_id(self.id).map(&:image_id)
    Image.find image_id
  end

  def recent_events
    self.events.find(:all, :limit => 3, :order => "created_at DESC")
  end
end

