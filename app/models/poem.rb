class Poem < ActiveRecord::Base

  def fill_with(responses)
    result = text.dup
    responses.each_with_index do |(old_word, substitute), index|
      result.gsub!(prompt_regex(old_word), substitute)  # prompt
      result.gsub!(/@{#{old_word}}/, substitute)  # back-refs
    end
    result
  end

  def prompts
    results = {}
    words = []
    min_offset = 0
    while (matches = text.match(prompt_regex("\\w*"), min_offset))
      prompt = matches[:prompt]
      old_word = matches[:old_word]
      fix_backrefs_in_prompt(prompt, words)
      words << old_word
      results[old_word] = prompt
      min_offset = matches.offset(:prompt).last + 2
    end
    results
  end

  private

  def prompt_regex(key)
    /@{(?<old_word>#{key}): (?<prompt>[^}]+)}/
  end

  def fix_backrefs_in_prompt(prompt, words)
    while (matches = prompt.match /@(\w+)@/)
      number = words.find_index matches[1]
      prompt.gsub! matches[0], "##{number + 1}"
    end
  end

end
