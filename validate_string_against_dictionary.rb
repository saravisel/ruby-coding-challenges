string = "Practice makes perfect."
dictionary = ["practice", "makes", "perfect"]

def validate_string(string, dictionary)
  word_array = string[0..string.length-2].split(" ")
  word_dictionary = {}
  dictionary.each do | dict |
    word_dictionary[dict] = true
  end
  word_array.each do | word |
    return false if !word_dictionary[word.downcase]
  end
  true 
  
end

describe "validates string against dictionary" do
  it "it can take string array & dictionary hash as input and returns true if matches found" do
    expect( validate_string(string, dictionary)).to eq true
  end
end