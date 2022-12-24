string_array = [
  "Web IconHTML & CSS100%",
  "Command LineLearn the Command Line100%",
  "Ruby IconRuby50%",
  "Rails IconLearn Ruby on Rails100%",
  "Git IconLearn Git100%",
  "SassLearn Sass20%",
  "JQuery IconjQuery1%",
  "Angular JSLearn AngularJS 1.X100%",
  "Javascript IconLearn JavaScript55%"
]

def parsing_string(string_array)
   final_array = []
   string_array.each do |str|
    final_array << str.scan(/\d+/).last.to_i
   end
   final_array
end

describe "string_parser" do
  it "can take a string array and outputs the correct values" do
    expect(parsing_string(string_array)).to eq ([100, 100, 50, 100, 100, 20, 1, 100, 55])
  end
end