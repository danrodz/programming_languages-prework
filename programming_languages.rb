def reformat_languages(languages)
  # your code here
  new_hash = {}
  new_hash.default = false 
  languages.each do |styles, langs|
    languages[styles].each do |lang, types|
      languages[styles][lang].each do |type, value|
          if new_hash[lang] == false
          new_hash[lang] = {
            type: value,
            style: []
          }
        else
          new_hash[lang][:style].push(styles)
        end
      end
    end
  end
  new_hash
end
