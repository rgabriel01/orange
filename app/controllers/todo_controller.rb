class TodoController < ApplicationController
  def index

  end

  def create

  end

  def get_todos
    render json: [{description: 'trolololo', created_at: '11/11/2015'},
                  {description: 'ASDASDASAS', created_at: '11/11/2015'},
                  {description: 'hlksldksf', created_at: '11/11/2015'}
    ]
  end

end
