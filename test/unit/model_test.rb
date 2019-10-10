# frozen_string_literal: true

require "test_helper"

class ActionTextLite::ModelTest < ActiveSupport::TestCase
  test "base methods" do
    message = Message.new(content: "")
    assert_equal true, message.content.blank?
    assert_equal true, message.content.empty?
    assert_equal false, message.content.present?
    assert_equal false, message.content.nil?
    assert_equal "", message.content.to_s

    message.content = "Hello"
    assert_equal false, message.content.blank?
    assert_equal false, message.content.empty?
    assert_equal true, message.content.present?
    assert_equal false, message.content.nil?
    assert_equal "Hello", message.content.to_s
  end

  test "saving attributes" do
    message = Message.create(
      content: "This is message content.",
    )

    assert_equal "This is message content.", message.content.to_s

    texts = ActionTextLite::RichText.where(record: message)
    assert_equal 1, texts.size

    assert_equal message.content, ActionTextLite::RichText.where(record: message, name: "content").take

    html = %(Not change content <strong style="color: red;">again</strong> <img width="100" />)
    message.content = html
    message.save

    message.reload
    assert_equal html, message.content.to_s
  end
end
