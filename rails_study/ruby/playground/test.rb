def doubleMap1(x)
  [1, 2, 3].map do |n1|
    n1 * x
  end
  .map do |n2|
    n2 * x
  end
end

def doubleMap2(x)
  res =
  [1, 2, 3].map do |n1|
    n1 * x
  end
  .map do |n2|
    n2 * x
  end
end

# 出力結果が同じ？？？
pp doubleMap1(4)
pp doubleMap2(4)
