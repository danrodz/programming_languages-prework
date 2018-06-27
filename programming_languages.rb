def reformat_languages(languages)
  # your code here
  new_hash = {}
  new_hash.default = "false" 
  languages.each do |styles, langs|
    languages[styles].each do |lang, types|
      new_hash[lang] = {
        type: "",
        style: false
      }
      languages[styles][lang].each do |type, value|
            new_hash[lang][:type] = value
          if new_hash[lang][:style] == false
            new_hash[lang][:style] = [styles]
          else
            new_hash[lang][:style].push(styles)
          end
      end
    end
  end
  new_hash
end
