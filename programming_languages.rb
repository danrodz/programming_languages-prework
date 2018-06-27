def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |styles, langs|
    languages[styles].each do |lang, types|
      languages[styles][lang].each do |type, value|
        # if new_hash.has_key?(lang.to_s)
          new_hash[lang] = {
            type: value,
            style: []
          }
          new_hash[lang][:style]
        #end
      end
    end
  end
  new_hash
end
