class Poem < ActiveRecord::Base
  def fill_with(responses)
    result = text.dup
    responses.each do |key, val|
      result.gsub!(/@{#{key}: [^}]+}/, val) # 1st use, eg @{tree: noun, one syllable}
      result.gsub!(/@{#{key}}/, val) # later uses, like @{tree}
    end
    result
  end
end
