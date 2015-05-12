class Poem < ActiveRecord::Base

  def fill_with(responses)
    result = text.dup
    responses.each do |key, val|
      result.gsub!(descriptor_regex(key), val) # 1st use, eg @{tree: noun, one syllable}
      result.gsub!(/@{#{key}}/, val) # later uses, like @{tree}
    end
    result
  end

  def prompts
    results = {}
    tmp_text = text.dup
    while (matches = tmp_text.match descriptor_regex("\\w*"))
      results[matches[1]] = matches[2]
      tmp_text.sub!(matches[0], "")
    end
    results
  end

  private

  def descriptor_regex(key)
    /@{(#{key}): ([^}]+)}/
  end

end
