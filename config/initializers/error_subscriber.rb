# サブスクライバを定義
class ErrorSubscriber
  def report(error, handled:, severity:, context:, source: nil)
    Rails.logger.error(error.class)

    # Request-ID を取得してログへ出力する
    request_id = context[:controller].request.headers.env['action_dispatch.request_id']
    Rails.logger.error(request_id)

    Rails.logger.error(error.message)
    Rails.logger.error(error.backtrace.join("\n"))
  end
end

# サブスクライバを登録
Rails.error.subscribe(ErrorSubscriber.new)