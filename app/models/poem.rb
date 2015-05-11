class Poem < ActiveRecord::Base
  def fill_with(responses)
    result = text.dup
    responses.each_with_index { |str, i| result.gsub!(/@#{i}\b/, "#{str}") }
    result
  end
end
