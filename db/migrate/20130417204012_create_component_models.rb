class CreateComponentModels < ActiveRecord::Migration
  def change
    create_table :component_models do |t|
      t.references :brand
      t.string :name
      t.text :description
      t.boolean :training_required
      t.string :autocomplete

      t.timestamps
    end
    add_index :component_models, :brand_id
  end
end
