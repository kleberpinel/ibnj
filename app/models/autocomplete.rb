class Autocomplete

	attr_accessor :id, :value, :label

	def initialize(id, value, label)
		@id = id
		@value = value
		@label = label
	end
end
