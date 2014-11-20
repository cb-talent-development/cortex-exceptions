require "cortex/exceptions/version"

module Cortex
  module Exceptions
    class CortexError < StandardError; end

    class CortexAPIError < CortexError
      attr_accessor :http_status

      def initialize(message = 'Internal server error', http_status = :internal_server_error)
        @http_status = http_status
        super(message)
      end
    end

    class NotEmptyError < CortexAPIError
      def initialize(message = nil)
        super(message, :conflict)
      end
    end

    class ResourceConsumed < CortexAPIError
      def initialize(message = 'Resource is in use by another resource and cannot be deleted', http_status = :unprocessable_entity)
        super(message)
      end
    end

    class IdExpected < ArgumentError; end

    class IdNotExpected < ArgumentError; end
  end
end
