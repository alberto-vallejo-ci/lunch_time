module Searches
  module SearchLogic
    class << self
      def filter_restaurants(values)
        Restaurant.where(average_cost: values[:cost][:lowest]..values[:cost][:highest],
                         average_rate: values[:rate][:lowest]..values[:rate][:highest])
      end
    end
  end
end
