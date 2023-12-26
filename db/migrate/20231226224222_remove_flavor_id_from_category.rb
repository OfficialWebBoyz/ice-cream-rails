# frozen_string_literal: true

class RemoveFlavorIdFromCategory < ActiveRecord::Migration[7.1]
  def change
    reversible do |direction|
      change_table :categories do |t|
        direction.up { t.remove :flavor_id }
        # direction.down { t.add_column :flavor_id, :integer, foreign_key: true }
      end
    end
  end
end
