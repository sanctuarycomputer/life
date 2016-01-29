module V1
  class LinksController < ApplicationController

    def index
      render json: Link.all
    end

    def show
      render json: Link.find(params[:id])
    end

  end
end
