class Api::V1::GreetingsController < ApplicationController
  def random_greeting
    @greetings = Message.pluck(:greeting)
    @greeting = @greetings.sample
    render json: { greeting: @greeting }
  end
end

# module Api
#   module V1
#     class GreetingsController < ApplicationController
#       def random_greeting
#         @greetings = Message.pluck(:greeting)
#         @greeting = @greetings.sample
#         render json: { greeting: @greeting }
#       end
#     end
#   end
# end