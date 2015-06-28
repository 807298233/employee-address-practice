class HomesController < ApplicationController

  respond_to :json

  def index

    @data, @response_status = Business.query_business( params )

    Rails.logger.debug @data
  end

  def create

    @response_status = Business.create_business( params )

  end

end
