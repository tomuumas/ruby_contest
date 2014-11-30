# coding: utf-8

class Knapsack
  def initialize(n, w)
    @dp = {}
    @dp[n] = {}
    (0..w).each { |k| @dp[n][k] = 0 }
  end

  def calc(n, w, list)
    [*(0..n-1)].reverse.each do |k|
      (0..w).each do |k2|
        if k2 < list[k][0]
          @dp[k] = {} unless @dp.key?(k)
          @dp[k][k2] = @dp[k+1][k2]
        else
          @dp[k] = {} unless @dp.key?(k)
          @dp[k][k2] = [@dp[k+1][k2], @dp[k+1][k2-list[k][0]]+list[k][1]].max
        end
      end
    end
  end

  def answer(w)
    @dp[0][w]
  end
end

list = [[2,1],[3,2],[5,3],[7,4],[10,6]]
n = 5
w = 18
klass = Knapsack.new(n, w)
klass.calc(n, w, list)
p klass.answer(w)
