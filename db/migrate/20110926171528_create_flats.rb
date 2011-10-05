class CreateFlats < ActiveRecord::Migration

  def self.up
    create_table :flats do |t|
      t.integer :price, :default => 0
      t.integer :image_id
      t.integer :area_live, :default => 0
      t.integer :target_floor_id
      t.integer :area, :default => 0
      t.boolean :sold, :default => 0
      t.integer :position

			t.string :img_alt 
			t.string :img_coords
			t.string :img_target
			t.string :img_id
			t.string :img_shape
			t.string :img_href
      t.timestamps
    end

    add_index :flats, :id

    load(Rails.root.join('db', 'seeds', 'flats.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "flats"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/flats"})
    end

    drop_table :flats
  end

end

