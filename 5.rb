# coding: utf-8

# 最長共通部分文字列問題
class LCS
  def initialize(a, b)
    @dp = {}
    @i = a.length
    @j = b.length
    (0..@i).each { |k| @dp[k]={};@dp[k][0] = 0 }
    (0..@j).each { |k| @dp[0][k] = 0 }
  end

  def calc(a, b)
    (1..@i).each do |k|
      (1..@j).each do |k2|
        if a[k-1] == b[k2-1]
          @dp[k] = {} unless @dp.key?(k)
          @dp[k][k2] = @dp[k-1][k2-1].to_i + 1
        else
          @dp[k] = {} unless @dp.key?(k)
          @dp[k][k2] = [@dp[k][k2-1].to_i, @dp[k-1][k2].to_i].max
        end
      end
    end
    @dp[@i][@j]
  end
end

a = 'abcde'
b = 'efagcd'
klass = LCS.new(a, b)
p klass.calc(a, b)
