# frozen_string_literal: true

# Base model to inherit
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # Sort records by date of creation instead of primary key
  self.implicit_order_column = :created_at
end
