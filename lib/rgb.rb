def to_hex(rgb)
  rgb.sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end