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

  let(:poem_filled_in) { [
    "#{responses["Trees"]}\n"\
    "#{responses["I"]} think that I shall never"\
    " #{responses["see"]}\n"\
    "A #{responses["poem"]}"\
    " #{responses["lovely"]} as a"\
    " #{responses["tree"]}"
  ].join("\n") }

  let(:prompts) { { 
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

  it "shows it with all references filled in" do
    When I fill_in_the_poem
    Then I see_the_poem_filled_in
  end

  private

  def ask_to_fill_the_poem
    visit poem_path(poem)
  end

  def fill_in_the_poem
    ask_to_fill_the_poem
    prompts.each do |old_word, prompt|
      fill_in "responses_#{old_word}", with: responses[old_word]
    end
    click_on "Submit"
  end

  def see_the_poem_filled_in
    expect(page).to have_content poem_filled_in
  end

  def see_the_prompts
    prompts.each do |old_word, prompt|
      expect(page).to have_content prompt
    end
  end

end
