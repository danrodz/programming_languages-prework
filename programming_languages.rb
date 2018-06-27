def reformat_languages(languages)
  # your code here
  new_hash = {}
  new_hash.default = "false" 
  languages.each do |styles, langs|
    languages[styles].each do |lang, types|
      languages[styles][lang].each do |type, value|
        
        new_hash[lang] = {
          type: value,
          style: [styles]
        }
      end
    end
  end
  new_hash
end
