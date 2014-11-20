module GoodData
  module Connectors
    module Base
      class BaseStorage
        def initialize(metadata, params)
          @metadata = metadata
          @global_params = params
          @storage_params = @global_params['config']['storage']
          if ! @type
            raise "You must define @type in your storage e.g. 'dss'"
          end
         @params = @storage_params[@type]
        end

        def save_full(params)
        end
      end
    end
  end
end
