module Phantomblaster
  module Models
    class User
      def self.find
        data = Phantomblaster::Client.get('/user')
        new(data)
      end

      attr_reader :email, :agents

      def initialize(params)
        @email = params['email']
        @agents = params['agents']
      end
    end
  end
end
