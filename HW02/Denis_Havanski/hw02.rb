require 'pry'
require 'pry-byebug'

module HDArrayMethods
  refine Array do

    def my_map
      if block_given?
        main_array = self
        ret_array = []
        last_el = self.size

        for i in 0...last_el
          ret_array << yield(main_array[i])
        end

        ret_array
      end
    end


    def my_select
      if block_given?
        main_array = self
        ret_array = []
        last_el = self.size

        for i in 0...last_el
          if yield(main_array[i]) == true
            ret_array << main_array[i]
          end
        end
        ret_array
      end
    end

    def my_each

    end

  end
end

using HDArrayMethods

array = [1,2,3,4,5,6,65]

p array.my_map {|e| e**2 }

p array.my_select {|e| e.even?}

