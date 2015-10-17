module API
  module V1
    class Base < Grape::API
      version 'v1'
      format :json

      mount API::V1::Users
   	end
  end
end