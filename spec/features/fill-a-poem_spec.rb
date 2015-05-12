require "rails_helper"

describe "filling in a poem" do

  let(:poem) { Poem.create(
    title: "Trees",
    text: "@{Trees: noun, plural, one syllable}\n"\
          "@{I: pronoun} think that I shall never"\
          " @{see: verb, one syllable, rhyming with the singular of @Trees@}\n"\
          "A @{poem: noun, two syllables, accent on the first}"\
          " @{lovely: adjective, two syllables, accent on the first} as a"\
          " @{tree: singular of @Trees@}") }

  let(:expected_prompts) { { 
    "Trees" => "noun, plural, one syllable",
    "I" => "pronoun",
    "see" => "verb, one syllable, rhyming with the singular of #1",
    "poem" => "noun, two syllables, accent on the first",
    "lovely" => "adjective, two syllables, accent on the first",
    "tree" => "singular of #1"
  } }

  let(:responses) { { "Trees" => "boats",
                      "I" => "ye",
                      "see" => "float",
                      "poem" => "boar's head",
                      "lovely" => "tired",
                      "tree" => "boat" } }

  it "prompts with number-references filled in" do
    When I ask_to_fill_the_poem
    Then I see_the_prompts
  end

  private

  def ask_to_fill_the_poem
    visit poem_path(poem)
  end

  def see_the_prompts
    expected_prompts.each do |old_word, prompt|
      expect(page).to have_content prompt
    end
  end

end
