# frozen_string_literal: true

require "test_helper"

class ActionTextLite::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, ActionTextLite
    assert_equal "action_text_rich_texts", ActionTextLite::RichText.table_name
  end
end
