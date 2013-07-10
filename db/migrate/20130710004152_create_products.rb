class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.float :pricing
      t.references :category

      t.timestamps
    end
  end
end
