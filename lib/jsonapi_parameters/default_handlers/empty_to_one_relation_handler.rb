require 'active_support/inflector'

module JsonApi
  module Parameters
    module Handlers
      module DefaultHandlers
        class EmptyToOneRelationHandler < BaseHandler
          include ActiveSupport::Inflector

          attr_reader :with_inclusion, :vals, :key

          def handle
            [
              ["#{singularize(relationship_key)}_attributes".to_sym, {}],
              ["#{singularize(relationship_key)}_id".to_sym, nil]
            ]
          end
        end
      end
    end
  end
end
