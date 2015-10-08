class TalkerController < ApplicationController
  def index
    @talks = Talk.all
  end
  def create
    learn = Learn.where(ask: params[:ask]).sample
    
    unless learn.nil?
      Talk.create(talk_type: "user", talk_content: learn.ask)
      Talk.create(talk_type: "bot", talk_content: learn.answer)
      redirect_to '/'
    else
      redirect_to '/learn'
    end
  end
end
