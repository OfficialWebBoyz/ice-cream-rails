# frozen_string_literal: true

module FlavorsHelper
  # todo, make this a global function
  def class_names(*args)
    classes = args.map do |item|
      if item.is_a?(Hash)
        item.select { |_, value| value }.keys.join(' ')
      elsif item.is_a?(String)
        item.to_s
      else
        item
      end
    end.select(&:present?)
    classes.join(' ')&.strip || ''
  end
end
