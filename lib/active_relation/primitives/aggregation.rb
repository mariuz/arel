module ActiveRelation
  module Primitives
    class Aggregation  
      attr_reader :attribute, :function_sql
      
      def initialize(attribute, function_sql)
        @attribute, @function_sql = attribute, function_sql
      end
  
      def to_sql(strategy = nil)
        "#{function_sql}(#{attribute.to_sql})"
      end
      
      def ==(other)
        self.class == other.class and attribute == other.attribute and function_sql == other.function_sql
      end
    end
  end
end