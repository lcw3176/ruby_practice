class SendSlackJob < ApplicationJob
  queue_as :alert_queue

  def perform(channel:, status:, message:)
    # 슬랙 클라이언트 코드
    # SlackClient.send_message(channel, message, ...)
    # ....

    puts "-----------------"
    puts "  CHANNEL [ " + channel + " ] "
    puts "  STATUS [ " + status.to_s + " ] "
    puts "  MESSAGE [ " + message + " ] "
    puts "-----------------"
  end
end
