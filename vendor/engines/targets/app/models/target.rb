class Target < ActiveRecord::Base
  has_many :events
  acts_as_indexed :fields => [:name]

  validates :name, :presence => true, :uniqueness => true
  validates :floors, :presence => true, :numericality => {:only_integer => true}

  def recent_events
    self.events.find(:all, :limit => 3, :order => "created_at DESC")
  end
end

