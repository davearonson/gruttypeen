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
            text: <<-EOT.gsub(/^ */, "").gsub(/\n\Z/, ""))
              @{Trees: noun, plural, one syllable} not by Joyce Kilmer

              I think that I shall never @{see: verb, one syllable}
              A poem @{lovely: adjective, two syllables, accent on the first} as a @{tree: singular of @Trees@}.

              A @{tree} whose @{hungry: adjective, two syllables, accent on the first} @{mouth: noun, one syllable} is @{prest: verb, past tense, one syllable}
              Upon the @{earth: noun there is only one of, one syllable}’s @{sweet: adjective, one syllable} flowing @{breast: body part, one syllable, rhyming with @prest@};

              A @{tree} that @{looks: verb, third person singular, one syllable} at God all @{day: length of time, one syllable},
              And lifts her leafy @{arms: body part, one syllable, plural} to @{pray: verb, one syllable, rhyming with @day@};

              A @{tree} that may in Summer @{wear: verb, one syllable}
              A nest of @{robins: animal, plural, two syllables, accent on the first} in her @{hair: body part, one syllable, rhyming with @wear@};

              Upon whose bosom @{snow: substance, one syllable} has @{lain: verb, past perfect ('has' form), one syllable};
              Who intimately lives with @{rain: substance, one syllable, rhyming with @lain@}.

              Poems are made by @{fools: type of person, plural, one syllable} like @{me: noun, one syllable, rhyming with @tree@},
              But only God can make a @{tree}.
EOT

Poem.create(title: "Roses are Red",
            author: "unknown",
            text: <<-EOT.gsub(/^ */, "").gsub(/\n\Z/, ""))
              @{Roses: noun, plural, two syllables, accent on the first} are @{red: adjective, one syllable}
              @{Violets: noun, plural, two syllables, accent on the first} are @{blue: adjective, one syllable}
              @{Sugar: noun, two syllables, accent on the first} is @{sweet: adjective, one syllable}
              And so are @{you: noun, plural, one syllable, rhyming with @blue@}.
EOT
