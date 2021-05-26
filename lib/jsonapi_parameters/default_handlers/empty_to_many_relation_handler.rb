require 'active_support/inflector'

module JsonApi
  module Parameters
    module Handlers
      module DefaultHandlers
        class EmptyToManyRelationHandler < BaseHandler
          include ActiveSupport::Inflector

          attr_reader :with_inclusion, :vals, :key

          def handle
            [
              ["#{pluralize(relationship_key)}_attributes".to_sym, []],
              ["#{singularize(relationship_key)}_ids".to_sym, []]
            ]
          end
        end
      end
    end
  end
end
