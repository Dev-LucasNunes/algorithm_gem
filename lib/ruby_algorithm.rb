# frozen_string_literal: true
require "ruby_algorithm/version"
require_relative "Algoritmos/bubble_sort"
require_relative "Algoritmos/binary_search"
require_relative "Algoritmos/count"
require_relative "Algoritmos/linear_search"
require_relative "Algoritmos/maximize_array"
require_relative "Algoritmos/reversal_array"
require_relative "Problemas/calculate_age"
require_relative "Problemas/find_future"
require_relative "Problemas/missing_character"

module RubyAlgorithm
  class Error < StandardError
    def initialize(msg = "Ocorreu um erro customizado")
      super
    end
  end
end
