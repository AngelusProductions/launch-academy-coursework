def perimeter (height, width = nil)
  if width.nil?
    return 4 * height
  else
    return 2 * width + 2 * height
  end
end
