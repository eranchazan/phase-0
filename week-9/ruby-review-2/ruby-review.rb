# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: Eunice Do ].


# 1. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }


# 2. Pseudocode what happens when the code above runs
# Define assert method that raises an argument error unless the method yield returns true. In  # this case, yield would return true if name is equal to the expected name value.


# 3. Copy your selected challenge here
# Solution Below
def shortest_string(list_of_words)
  if list_of_words.empty? == true
    return nil
  end

  shortest = list_of_words[0]

  list_of_words[1..-1].each do |string|
    if string.length < shortest.length
      shortest = string
    end
  end
return shortest
end


# RSpec
require_relative "my_solution"

describe 'shortest_string' do
  it "returns nil when the array is empty ([])" do
    expect(shortest_string([])).to be_nil
  end

  it "returns '' when that is the only element in the array" do
    expect(shortest_string([''])).to eq ''
  end

  it "returns 'cat' when that is the only element in the array" do
    expect(shortest_string(['cat'])).to eq 'cat'
  end

  it "returns 'cat' with the example array" do
    expect(shortest_string(['cat', 'zzzzzzz', 'apples'])).to eq 'cat'
  end

  it "returns the shortest string regardless of ordering" do
    # This creates an array containing ['a', 'aa', ...]
    # up to 10 characters long, but randomly ordered
    array = Array.new(10) { |i| 'a' * (i + 1) }.shuffle

    expect(shortest_string(array)).to eq 'a'
  end
end


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

assert { shortest_string([]) == nil }
# assert { shortest_string([]) == 3 }

assert { shortest_string(['']) == '' }

assert { shortest_string(['cat']) == 'cat' }

assert { (shortest_string(['cat', 'zzzzzzz', 'apples'])) == 'cat' }

array = Array.new(10) { |i| 'a' * (i + 1) }.shuffle
assert { shortest_string(array) == 'a' }


# 5. Reflection

#What concepts did you review in this challenge?
#I reviewed the assert method and how it workd under-the-hood for the rspec file. 
#
#What is still confusing to you about Ruby?
#I still have a confusion about semantics and syntax of assert. 
#
#What are you going to study to get more prepared for Phase 1?
# I'm going to look at more rpsec files and study more the syntax of assert methods along with other methods rspec uses. 
#
