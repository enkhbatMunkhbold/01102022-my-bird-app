class BirdsController < ApplicationController
  def index
    birds = Bird.all 
    render json: birds
  end

  def show
    bird = find_bird
    render json: bird
  rescue ActiveRecord::RecordNotFound
    render json: "Bird not found", status: :not_found
  end

  def destroy
    bird = find_bird
    bird.destroy
    head :no_content
  end

  private

  def find_bird
    Bird.find(params[:id])
  end

end
