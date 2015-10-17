module API
	module V1
		class User < Grape::API
			# "user"resource配下にすることで
			# /api/v1/userのapiとしてアクセス可能
			resource :user do
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