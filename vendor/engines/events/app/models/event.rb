class Event < ActiveRecord::Base

  belongs_to :target
  has_many :event_images, :dependent => :destroy
  has_many :images, :through => :event_images

  acts_as_indexed :fields => [:name, :description]

  validates :name, :presence => true, :uniqueness => true
  validates :target_id, :presence => true

  def images
    image_id = EventImage.find_all_by_event_id(self.id).map(&:image_id)
    Image.find image_id
  end


end

