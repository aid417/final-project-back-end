class CreateMerges < ActiveRecord::Migration[6.0]
  def change
    create_table :merges do |t|
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
