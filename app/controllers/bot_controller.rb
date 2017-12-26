class BotController < ApplicationController
  def index
    @presenter = Presenter.new
  end
end
