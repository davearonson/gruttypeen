class PoemsController < ApplicationController

  def index
    @poems = Poem.all
  end

  def show
    @poem = Poem.find(params[:id])
  end

  def random
    @poem = Poem.order("random()").first
    render :show
  end

  def fill
    poem = Poem.find(params[:poem_id])
    responses = params[:responses]
    @filled_in = poem.fill_with responses
  end

end
