# frozen_string_literal: true

class CreateFlavorCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :flavor_categories do |t|
      t.references :flavor, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
