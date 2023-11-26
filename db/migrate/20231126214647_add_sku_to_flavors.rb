# frozen_string_literal: true

class AddSkuToFlavors < ActiveRecord::Migration[7.1]
  def change
    add_column :flavors, :sku, :string
  end
end
