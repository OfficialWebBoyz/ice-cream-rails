# frozen_string_literal: true

class FlavorCategory < ApplicationRecord
  belongs_to :flavor
  belongs_to :category
end
