class CreateTargets < ActiveRecord::Migration

  def self.up
    create_table :targets do |t|
      t.string :name
      t.integer :image_id
      t.string :address
      t.text :description
      t.datetime :date_start
      t.datetime :date_end
      t.integer :position
      t.string :localition
      t.timestamps
    end

    add_index :targets, :id

    load(Rails.root.join('db', 'seeds', 'targets.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "targets"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/targets"})
    end

    drop_table :targets
  end

end

