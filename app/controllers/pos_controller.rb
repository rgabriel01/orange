class PosController < ApplicationController
  def index
  end

  def get_mon
    render json: {
      mon: 'the quick brown fox jumps over the lazy dog !'
    }
  end
end
