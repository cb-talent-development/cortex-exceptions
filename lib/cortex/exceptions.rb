require "cortex/exceptions/version"

module Cortex
  module Exceptions
    class CortexError < StandardError; end

    class ApiError < CortexError
      attr_accessor :http_status

      def initialize(message = 'Internal server error', http_status = :internal_server_error)
        @http_status = http_status
        super(message)
      end
    end

    class NotEmptyError < ApiError
      def initialize(message = nil)
        super(message, :conflict)
      end
    end

    class ResourceConsumed < ApiError
      def initialize(message = 'Resource is in use by another resource and cannot be deleted', http_status = :unprocessable_entity)
        super(message)
      end
    end

    class IdExpected < ArgumentError; end

    class IdNotExpected < ArgumentError; end

    class ConnectionFailed < CortexError
      attr_reader :base_url
      def initialize(base_url = "http://api.cbcortex.com/api/v1/")
        @base_url = base_url
        super
      end
    end
  end
end
