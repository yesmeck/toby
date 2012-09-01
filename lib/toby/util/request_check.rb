module Toby
  module Util
    class RequestCheck
      def self.check_not_null(value, field_name)
        if self.check_emty value
          raise "client-check-error:Missing Required Arguments: #{field_name}"
        end
      end

      def self.check_min_value(value, min_value, field_name)
        if self.check_emty value
          return
        end

        self.check_numeric value, field_name

        if value < min_value
          raise "client-check-error:Invalid Arguments:the value of #{field_name} can not be less than #{min_value}."
        end
      end

      def self.check_numeric value, field_name
        begin
          new_value = Float value
        rescue
          if new_value.nil?
            raise "client-check-error:Invalid Arguments:the value of #{field_name} is not number : #{value}."
          end
        end
      end

      def self.check_emty(value)
        if value.nil? || value.blank?
          return true
        end

        return false
      end
    end
  end
end
