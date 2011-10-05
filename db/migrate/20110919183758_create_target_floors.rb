class CreateTargetFloors < ActiveRecord::Migration

  def self.up
    create_table :target_floors do |t|
      t.integer :target_id
      t.integer :floor
      t.string :data
      t.integer :image_id
      t.integer :position

      t.timestamps
    end

    add_index :target_floors, :id

    load(Rails.root.join('db', 'seeds', 'target_floors.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "target_floors"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/target_floors"})
    end

    drop_table :target_floors
  end

end

