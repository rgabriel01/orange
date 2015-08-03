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
            if field == 'created_at'
              parsed_value[field] = item[field].try(:strftime, '%m/%d/%Y') if item[field].present?
            else
              parsed_value[field] = item[field]
            end
          }
        parsed_value
      }
    end

  end
end