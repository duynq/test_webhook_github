class WebHookController < ApplicationController

  before_action :load_chatwork, only: :index

  def index
    push = JSON.parse(params["payload"])
    send_message
  end

  private

  def load_chatwork
    ChatWork.api_key = "deaaf5157aeb452dbe06af474d75b2ae"
  end

  def send_message
    ChatWork::Message.create room_id: "40032749", body: "[To:1567299] Nguyen Van Hien \n
    a pull request has create"
  end
end
