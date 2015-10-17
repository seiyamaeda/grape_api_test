module API
  class Base < Grape::API
    # Baseクラスのpathを定義する
    prefix 'api'

    # v1のBaseクラスをマウントする
    mount API::V1::Base
  end
end