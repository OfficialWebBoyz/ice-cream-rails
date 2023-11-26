# frozen_string_literal: true

DISPLAY_NAMES = [
  'Chocolate chip cookie dough',
  'Peanut butter & jelly',
  'Mint chocolate chip',
  'Horchatta', # Rice Ice Cream - made with actual rice milk
  'Vegan Strawberry Shortcake',
  'Taro & marshmellow',
  'Butter pecan',
  'Rainbow sherbert',
  'Coconut almond chunk',
  'Pistacio',
  'Chocolate caramel & vanila bean',
  'Sweet cream & pretzel',
  'Cinnamon role',
  'Chocolate croissant',
  'Roasted blueberry cheesecake',
  'Peach cobbler'
].freeze

DISPLAY_NAMES.each do |name|
  Flavor.create(
    name:,
    sku: name.downcase.gsub(/[^\d\w]/, '')
  )
end
