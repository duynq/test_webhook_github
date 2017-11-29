class WebHookController < ApplicationController

  before_action :load_chatwork, only: :index

  def index
    push = JSON.parse(params["payload"])
    binding.pry
  end

  private

  def load_chatwork
    ChatWork.api_key = "deaaf5157aeb452dbe06af474d75b2ae"
  end
end
