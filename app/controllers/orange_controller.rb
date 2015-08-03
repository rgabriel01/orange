class OrangeController < ApplicationController
  def index

  end

  def get_orange
    render json: {
        name: "raymond",
        lastname: "gabriel",
        age: "30",
        address: "540 Sto.Tomas Sta.Maria, Bulacan"
    }
  end

end
