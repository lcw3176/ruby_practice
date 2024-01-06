class ErrorsController < ApplicationController

  def show
    wrapper = ActionDispatch::ExceptionWrapper.new(request.env, request.env["action_dispatch.exception"])
    status = wrapper.status_code

    @message = I18n.t("error_page.message.normal")
    if status == 404
      @message = I18n.t("error_page.message.not_found")
    elsif status >= 400 && status <= 407
      @message = I18n.t("error_page.message.else")
    end
    error = {
      status: {
        code: "service_not_available",
        message: @message
      }
    }
    respond_to do |format|
      format.html { render :show, status: status }
      format.json { render json: error, status: status }
      format.any { head :not_acceptable }
    end
  end
end
