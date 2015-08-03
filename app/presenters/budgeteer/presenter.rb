class Budgeteer
  class Presenter

    #exposed fields
    FIELDS = %w(description amount created_at)

    def initialize(options={})
      @raw = options
    end

    def render
      @raw.map{|item|
        parsed_value = {}
          FIELDS.each{|field|
            parsed_value[field] = item[field]
          }
        parsed_value
      }
    end

  end
end