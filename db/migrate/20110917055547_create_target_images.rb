class CreateTargetImages < ActiveRecord::Migration

  def self.up
    create_table :target_images do |t|
      t.integer :target_id
      t.integer :image_id
      t.timestamps
    end
  end

  def self.down
    [::Slug].reject{|m|
      !(defined?(m) and m.respond_to?(:table_name))
    }.each do |model|
      drop_table model.table_name
    end
  end

end

