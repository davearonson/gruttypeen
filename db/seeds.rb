# This file should contain all the record creation needed to seed the database with its default values."
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup)."
#"
# Examples:"
#"
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])"
#   Mayor.create(name: 'Emanuel', city: cities.first)"

Poem.create(title: "Trees",
            author: "Joyce Kilmer",
            year: 1913,
            text: [
              "@{Trees: noun, plural, one syllable} not by Joyce Kilmer",
              ""
              "I think that I shall never @{see: verb, one syllable}",
              "A @{poem: noun, two syllables, accent on the first} @{lovely: adjective, two syllables, accent on the first} as a @{tree: singular of @{Trees}}.",
              "",
              "A @{tree} whose @{hungry: adjective, two syllables, accent on the first} @{mouth: noun, one syllable} is @{prest: verb, past tense, one syllable}",
              "@{upon: preposition, two syllables, accent on the second} the @{earth: noun there is only one of, one syllable}’s @{sweet: adjective, one syllable} @{flowing: gerund (-ing form of a verb), two syllables} @{breast: body part, one syllable, rhyming with @{prest}};",
              "",
              "A @{tree} that @{looks: verb, third person singular, one syllable} at @{God: noun there is only one of, one syllable} all @{day: length of time, one syllable},",
              "And @{lifts: verb, third person singular, one syllable} her @{leafy: adjective, two syllables, accent on the first} @{arms: body part, one syllable, plural} to @{pray: verb, one syllable, rhyming with @{day}};",
              "",
              "A @{tree} that may in Summer @{wear: verb, one syllable}",
              "A @{nest: noun, container, one syllable} of @{robins: animal, plural, two syllables, accent on the first} in her @{hair: body part, one syllable, rhyming with @{wear}};",
              "",
              "Upon whose @{bosom: body part, two syllables, accent on the first} @{snow: substance, one syllable} has @{lain: verb, past perfect ('has' form), one syllable};",
              "Who @{intimately: adverb, four syllables, accent on the first} @{lives: verb, third person singular, one syllable} with @{rain: substance, one syllable, rhyming with @{lain}}.",
              "",
              "@{poems: noun, plural, two syllables, accent on the first} are @{made: verb, past perfect ('has' form), one syllable} by @{fools: type of person, plural, one syllable} like @{me: noun, one syllable, rhyming with @{tree},",
              "But only @{God} can make a @{tree}."
            ].join("\n")
