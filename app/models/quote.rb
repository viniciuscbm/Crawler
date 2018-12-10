# frozen_string_literal: true

class Quote
  include Mongoid::Document

  field :quote,        type: String
  field :author,       type: String
  field :author_about, type: String
  field :tags,         type: Array

  validates :quote, :author, :author_about, :tags, presence: true
  validates :quote, uniqueness: true
end
