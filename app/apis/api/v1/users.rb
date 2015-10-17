module API
  module V1
    class Users < Grape::API
      # `users`resource配下にすることで
      # /api/v1/usersのapiとしてアクセスできる
      resource :users do
        # GET http://[host]/api/v1/users
        get do
          User.all
        end

        # パラメタバリデーション
        params do
          requires :id, {type: Integer, desc: 'user id.'}
         end
         # GET http://[host]/api/v1/users/[user_id]
         get ':id' do
          User.find(params[:id])
         end
      end
    end
  end
end