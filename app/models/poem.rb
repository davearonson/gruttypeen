class Poem < ActiveRecord::Base

  def fill_with(responses)
    result = text.dup
    responses.each do |old_word, substitute|
      new_word = substitute.dup  # in case we need to capitalize it
      new_word.capitalize! if /[A-Z]/.match(old_word[0])
      result.gsub!(prompt_regex(old_word), new_word)  # prompt
      result.gsub!(/@{#{old_word}}/, new_word)  # back-refs
    end
    # if any left, try with case swapped, else just mark bad
    while (matches = /@{(?<old_word>\w+)(: [^}]+)?}/.match(result))
      old_word = matches[:old_word]
      new_word = old_word.capitalize
      substitute = responses[new_word]
      if substitute.present?
        substitute.capitalize! if /[A-Z]/.match(old_word[0])
        result.gsub!(matches[0], substitute)
      else
        # swapped version isn't there either so just mark it bad
        result.gsub!(matches[0], matches[0].gsub!("@{", "@{ERROR - "))
      end
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

  def sub_in(str, old_word, substitute)
    substitute ||= "@[!#{old_word}!]"
    str.gsub!(prompt_regex(old_word), substitute)  # prompt
    str.gsub!(/@{#{old_word}}/, substitute)  # back-refs
  end

end
