class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def response_format(code: "success", message: "", contents: "")
    {
      status: {
        code: code,
        message: message
      },

      :content => contents
    }.to_json
  end

end
