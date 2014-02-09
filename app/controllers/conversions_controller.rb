class ConversionsController < ApplicationController
  def create
    retries = 0

    begin
      schedule = ScheduleScraper.fetch(params[:url])

      render :json => { :schedule => schedule.to_h }
    rescue Exception => e
      retries = retries + 1

      if retries < 5
        logger.info "error - retry: #{retries}"
        logger.info e

        sleep 0.25
        retry
      else
        logger.info "error - retry max reached"
        render :nothing => true
      end
    end
  end
end
