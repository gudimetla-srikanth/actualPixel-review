
# for i in 1..5
#   puts i
# end
# ar = [1,6,3,12]
# print ar.sort

#inheritance.Ruby does not support multiple inheritance due to availabilty of modules.
# class Student
#   def print
#     puts "I am parent Printing method"
#   end 

#   def write
#     puts "I am wring method"
#   end
# end
# class ChildStudent < Student
#   def print
#     super()
#     puts "I am child printing method"
#   end
# end

# child_student_obj = ChildStudent.new
# puts child_student_obj.print

# 20.times { |val| puts val}

#program to find longest string

# string_array = ["srikanth","srinivas","ramanujan","elonmusk","narendra modi"]
# length = 0
# string = ""
# for text in string_array
#   new_length = text.length
#   if new_length > length
#     string = text
#     length = new_length
#   end
# end
# puts string
# 20.times {print"-"}
# puts ""
# puts string.reverse


# obj={
#   'user'=>'srikanth'
# }
# obj1=obj
# obj1['user'] = "srinicvas"  #changes obj
# puts obj
# puts obj1
# a=23
# b=a
# b=43
# puts a,b

# array = [1,1,1,2,3,4]
# puts array.uniq

#strings
# name = "srikanth"
# print name.methods

# all string methods

# [:each_grapheme_cluster, :slice, :slice!, :rpartition, :encoding, :force_encoding, :b, :valid_encoding?, :ascii_only?, :hash, :unicode_normalized?, :encode!, :unicode_normalize, :unicode_normalize!, :to_c, :encode, :to_r, :include?, :%, :*, :+, :unpack, :unpack1, :count, :partition, :+@, :-@, :<=>, :<<, :==, :===, :sum, :=~, :[], :[]=, :next, :empty?, :eql?, :casecmp, :casecmp?, :insert, :bytesize, :match, :match?, :succ!, :next!, :upto, :index, :byteindex, :rindex, :byterindex, :replace, :clear, :chr, :getbyte, :setbyte, :byteslice, :bytesplice, :scrub, :scrub!, :dedup, :freeze, :undump, :intern, :length, :size, :succ, :downcase, :capitalize, :upcase, :dump, :upcase!, :inspect, :swapcase!, :oct, :downcase!, :capitalize!, :swapcase, :to_str, :codepoints, :split, :lines, :hex, :chars, :to_s, :to_i, :to_f, :reverse!, :concat, :grapheme_clusters, :reverse, :bytes, :start_with?, :prepend, :crypt, :ljust, :gsub, :end_with?, :scan, :strip, :to_sym, :center, :sub, :lstrip, :chop, :rjust, :ord, :sub!, :rstrip, :delete_prefix, :chomp, :strip!, :gsub!, :chop!, :chomp!, :delete_suffix, :lstrip!, :rstrip!, :delete_prefix!, :delete_suffix!, :tr, :tr_s, :delete, :squeeze, :tr!, :tr_s!, :delete!, :squeeze!, :each_line, :each_byte, :each_char, :each_codepoint, :clamp, :between?, :<=, :>=, :<, :>, :singleton_class, :dup, :itself, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :display, :public_send, :class, :tap, :frozen?, :yield_self, :then, :extend, :clone, :!~, :method, :public_method, :nil?, :singleton_method, :respond_to?, :define_singleton_method, :object_id, :send, :to_enum, :enum_for, :!, :equal?, :__send__, :!=, :__id__, :instance_eval, :instance_exec]

#arrays
# array = [1,2,3]
# print array.methods

#array methods
# [:hash, :to_h, :include?, :&, :*, :+, :-, :at, :fetch, :last, :union, :difference, :intersection, :intersect?, :push, :append, :pop, :shift, :unshift, :each_index, :join, :rotate, :rotate!, :sort!, :sort_by!, :collect!, :map!, :select!, :filter!, :keep_if, :sort, :delete_at, :delete_if, :values_at, :reject!, :fill, :find_index, :assoc, :select, :filter, :flatten, :flatten!, :reject, :collect, :map, :compact!, :combination, :rassoc, :uniq!, :transpose, :repeated_permutation, :first, :permutation, :bsearch, :bsearch_index, :count, :minmax, :one?, :all?, :any?, :repeated_combination, :|, :reverse_each, :deconstruct, :none?, :zip, :take, :take_while, :drop, :drop_while, :<=>, :<<, :product, :cycle, :shuffle!, :==, :sum, :uniq, :compact, :pack, :[], :[]=, :shuffle, :sample, :empty?, :eql?, :insert, :index, :rindex, :min, :replace, :inspect, :clear, :max, :length, :size, :each, :to_ary, :reverse, :reverse!, :concat, :to_a, :to_s, :prepend, :delete, :slice, :slice!, :dig, :each_cons, :each_with_object, :chunk, :slice_before, :slice_after, :slice_when, :chunk_while, :chain, :lazy, :to_set, :find, :entries, :sort_by, :grep, :grep_v, :detect, :find_all, :filter_map, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :tally, :min_by, :max_by, :minmax_by, :member?, :each_with_index, :each_entry, :each_slice, :singleton_class, :dup, :itself, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :display, :public_send, :class, :tap, :frozen?, :yield_self, :then, :extend, :clone, :===, :!~, :method, :public_method, :nil?, :singleton_method, :respond_to?, :define_singleton_method, :freeze, :object_id, :send, :to_enum, :enum_for, :!, :equal?, :__send__, :!=, :__id__, :instance_eval, :instance_exec]

# objects
# obj = {'user'=>'srikanth'}
# print obj.methods

#object methods
# [:fetch_values, :slice, :except, :invert, :update, :merge!, :merge, :has_key?, :has_value?, :hash, :member?, :key?, :==, :compare_by_identity, :compare_by_identity?, :compact, :any?, :[], :[]=, :value?, :<=, :>=, :deconstruct_keys, :dig, :empty?, :eql?, :key, :to_h, :include?, :replace, :inspect, :clear, :length, :size, :<, :each, :>, :fetch, :to_hash, :to_proc, :to_a, :to_s, :shift, :select!, :filter!, :keep_if, :values_at, :delete_if, :reject!, :assoc, :rassoc, :select, :filter, :flatten, :reject, :compact!, :delete, :default, :rehash, :store, :default=, :default_proc, :default_proc=, :each_value, :each_key, :each_pair, :transform_keys, :transform_keys!, :transform_values, :transform_values!, :keys, :values, :each_cons, :each_with_object, :zip, :take, :take_while, :drop, :drop_while, :cycle, :chunk, :slice_before, :slice_after, :slice_when, :chunk_while, :sum, :uniq, :chain, :lazy, :to_set, :max, :min, :find, :entries, :sort, :sort_by, :grep, :grep_v, :count, :detect, :find_index, :find_all, :filter_map, :collect, :map, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :tally, :first, :all?, :one?, :none?, :minmax, :min_by, :max_by, :minmax_by, :each_with_index, :reverse_each, :each_entry, :each_slice, :singleton_class, :dup, :itself, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :display, :public_send, :class, :tap, :frozen?, :yield_self, :then, :extend, :clone, :<=>, :===, :!~, :method, :public_method, :nil?, :singleton_method, :respond_to?, :define_singleton_method, :freeze, :object_id, :send, :to_enum, :enum_for, :!, :equal?, :__send__, :!=, :__id__, :instance_eval, :instance_exec]