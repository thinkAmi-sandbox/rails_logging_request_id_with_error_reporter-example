class PollsController < ApplicationController
  def index
  end

  def logging_with_exception_object
    raise 'error!'
  rescue StandardError => e
    logger.error(e)
  end

  def logging_with_backtrace
    raise 'error!!'
  rescue StandardError => e
    logger.error(e.class)
    logger.error(e.message)
    logger.error(e.backtrace.join("\n"))
  end

  def logging_with_error_subscriber
    Rails.error.handle(StandardError) do
      raise 'error!!!!'
    end
  end
end
