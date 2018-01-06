class Question
  def initialize(sum,options)
    @sum = sum
    @options = options
  end
  def as_json(opts={})
   {
   Question: @sum,
   Options: @options
   }
  end
  def to_json(*opts)
    as_json(*opts).to_json(*opts)
  end 
end