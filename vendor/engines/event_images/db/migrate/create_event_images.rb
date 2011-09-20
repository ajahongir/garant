class CreateEventImages < ActiveRecord::Migration

  def self.up
    create_table :event_images do |t|
      t.integer :event_id
      t.integer :image_id
      t.string :data
      t.integer :position

      t.timestamps
    end

    add_index :event_images, :id

    load(Rails.root.join('db', 'seeds', 'event_images.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "event_images"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/event_images"})
    end

    drop_table :event_images
  end

end
