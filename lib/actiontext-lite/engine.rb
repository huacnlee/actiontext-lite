# frozen_string_literal: true

module ActionTextLite
  class Engine < Rails::Engine
    isolate_namespace ActionTextLite
    config.eager_load_namespaces << ActionTextLite

    initializer "action_text_lite.attribute" do
      ActiveSupport.on_load(:active_record) do
        include ActionTextLite::Attribute
      end
    end
  end
end
