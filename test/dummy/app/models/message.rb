# frozen_string_literal: true

class Message < ApplicationRecord
  validates :content, presence: true

  has_rich_text :content
end
