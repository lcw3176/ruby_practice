class SendSlackJob < ApplicationJob
  queue_as :within_1_hour

  def perform(channel:, message:)
    # 슬랙 클라이언트 코드
    # SlackClient.send_message(channel, message, ...)
    # ....

    puts "-----------------"
    puts "  ERROR [ " + channel + " ] "
    puts "  MESSAGE [ " + message + " ] "
    puts "-----------------"
  end
end
