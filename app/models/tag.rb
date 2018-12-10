# frozen_string_literal: true

class Tag
  include Mongoid::Document

  field :name, type: String

  validates :name, presence: true, uniqueness: true
end
