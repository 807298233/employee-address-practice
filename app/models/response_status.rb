# #
# 响应状态
# #
class ResponseStatus


  module Code

    # 请求失败
    ERROR = '50000'

    # 请求成功
    SUCCESS = '20000'

  end

  # 设置默认响应
  def self.default

    response_status = Hashie::Mash.new

    response_status.code = Code::ERROR
    response_status.message = ''

    response_status

  end

end