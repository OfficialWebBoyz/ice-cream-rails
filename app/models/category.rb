# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :flavor_category, dependent: nil
  has_many :flavor, through: :flavor_category

  validates :name,
            presence: true,
            # TODO: localize this
            format: { with: /\A[a-z]+(?:-[a-z]+)*\z/, message: 'Must be in kebab case' }
end
