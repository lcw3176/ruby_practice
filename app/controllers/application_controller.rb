class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  before_action :get_auth

  DEFAULT_READ_SIZE = 100

  def response_format(code: "success", message: "", contents: "")
    {
      status: {
        code: code,
        message: message
      },

      :content => contents
    }.to_json
  end


  def get_auth
    # if request.headers["Authorization"].blank?
    #   return render json: response_format, status: :unauthorized
    # end

    # @user_auth_id = request.headers["Authorization"]
    @user_auth_id = 1
  end

end
