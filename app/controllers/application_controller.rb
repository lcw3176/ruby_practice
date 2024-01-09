class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def make_success_format(code: , message: "", contents: "")
    {
      status: {
        code: code,
        message: message
      },

      :content => contents
    }.to_json
  end

end
