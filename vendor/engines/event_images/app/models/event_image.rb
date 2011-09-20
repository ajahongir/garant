class EventImage < ActiveRecord::Base

  belongs_to :event
  belongs_to :image

  acts_as_indexed :fields => [:data]

  validates :data, :presence => true, :uniqueness => true
  validates :image_id, :presence => true
  validates :event_id, :presence => true

end

