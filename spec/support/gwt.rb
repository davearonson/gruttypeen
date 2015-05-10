%i(Given When Then I And).each { |sym| define_method(sym) { |args| args } }
