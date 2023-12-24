# frozen_string_literal: true

class AddFlavorToCategory < ActiveRecord::Migration[7.1]
  def change
    add_reference :categories, :flavor, foreign_key: true
  end
end
