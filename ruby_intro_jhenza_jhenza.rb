
# Part 1
def unique_occurrences?(a)
  occurrences = a.uniq.map { |v| a.count(v) }
  occurrences.length == occurrences.uniq.length
end

def num_identical_pairs(a)
  pairs = 0
  a.each_with_index do |v, i|
    pairs += a.slice(i+1, a.length).count(v)
  end
  pairs
end
  

def check_if_pangram(s)
  ds = s.downcase
  ('a'..'z').to_a.all? {|l| ds.include? l }
end

# Part 2
def brackets_match?(s)
  close = {'{' => '}','['=>']','('=>')'}
  closes_needed = []
  s.each_char do |c|
    if c=~/[\{\(\[]/
      closes_needed.append(close[c])
    elsif c==closes_needed[-1]
        closes_needed.pop
    end
  end
  if closes_needed.length>0
    return false
  else
    return true
  end
end


def remove_and_append_vowels(s)
  ret = s
  ret.each_char do |c|
    ret.concat(ret.slice!(ret.index(c))) if c =~ /[aeiou]/i   
  end
end

def highest_frequency_word(s)
  sd = s.downcase.split
  sd.uniq.max { |a, b| sd.count(a) <=> sd.count(b) }
end

# Part 3
class Book
  attr_reader :title, :price

  def initialize(title, price)
    self.title= title
    self.price= price
  end

  def title=(title)
    raise ArgumentError, "Title must be a non-empty string" if title.nil? || title.empty?
    @title = title
  end

  def price=(price)
    raise ArgumentError, "Price must be a number greater than 0" if price.nil? || price <= 0
    @price = price
  end

  def formatted_price
    dollars = price.floor
    cents = ((price * 100) % 100).floor
    return "#{cents} cent#{s(cents)} only" if dollars == 0
    return "#{dollars} dollar#{s(dollars)}" if dollars == price
    return "#{dollars} dollar#{s(dollars)} and #{cents} cent#{s(cents)} only"
  end
  def s(num)
    "s" if num > 1
  end
end
