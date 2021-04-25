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

    end

    def my_each

    end

  end
end

using HDArrayMethods

array = [1,2,3]
puts array.my_map{|e| e - e }


