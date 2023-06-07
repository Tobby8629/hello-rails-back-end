module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        @greeting = Greeting.order('RANDOM()').limit(1).first
        render json: @greeting, status: :ok, message: 'greeting generated successfully'
      end
    end
  end
end
