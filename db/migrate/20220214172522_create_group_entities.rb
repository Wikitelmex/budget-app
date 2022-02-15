class CreateGroupEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :group_entities do |t|
      t.integer :group_id
      t.integer :entity_id

      t.timestamps
    end
  end
end
