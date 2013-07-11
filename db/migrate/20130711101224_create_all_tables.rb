class CreateAllTables < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
    end

    create_table :books do |t|
      t.integer :author_id
      t.string :name
    end

    create_table :tags do |t|
      t.string :name
      t.integer :tagable_id
      t.string :tagable_type
    end
  end
end
