# frozen_string_literal: true
require "ruby_algorithm/version"

module RubyAlgorithm
  class Error < StandardError
    def initialize(msg = "Ocorreu um erro customizado")
      super
    end
  end

  # Método para ordenar um array usando o algoritmo Bubble Sort
  def self.bubble_sort(input)
    i = 0
    while i < input.length - 1
      j = 0
      while j < input.length - i - 1
        if input[j] > input[j + 1]
          temp = input[j]
          input[j] = input[j + 1]
          input[j + 1] = temp
        end
        j += 1
      end
      i += 1
    end
    input
  end
end

#binary search
def binary_search(array, target)
  low = array.length - array.length
  high = array.length - 1
  mid = low + (high - low) / 2

  i = 0
  while i < array.length
    if i == mid && array[i] < target
      low = mid + 1
      mid = low + (high - low) / 2
      i = low - 1
    elsif i == mid && array[i] > target
      high = mid - 1
      mid = low + (high - low) / 2
      i = low - 1
    elsif target == array[mid]
      puts "A chave #{array[mid]} está exatamente na posição #{mid}"
      return
    end
    i += 1
  end
  puts "Chave não encontrada"
  return
end

#count
def count(string)
  count_uppercase = 0
  count_lowercase = 0
  count_especial = 0
  count_numeric = 0

  string.to_s.each_char do |char|
    if char == char.upcase && char =~ /[A-Za-z]/
      count_uppercase += 1
    elsif char == char.downcase && char =~ /[A-Za-z]/
      count_lowercase += 1
    elsif char =~ /[0-9]/
      count_numeric += 1
    elsif !(char =~ /[A-Za-z0-9]/)
      count_especial += 1
    end
  end
  return count_uppercase, count_lowercase, count_numeric, count_especial
end

#linear search
def linear_search(arr, key)
  arr.each_with_index do |element, index|
    return index if element == key
  end
  return "No match found"
end

#maximize array
def maximize_array(arr, k)
  sum = 0
  sum_negative = 0
  result = 0

    arr.each do |nbr|
      if nbr.negative?
        positive = nbr * -1
        sum_negative += positive
      else
      sum += nbr
      end
      result = sum + sum_negative
    end
  puts result
end

#reversal array
def reverse_array(arr, k)
  new_array = arr.rotate(-k)
  puts new_array
end

#calculate age
def find_age(current_date, current_month, current_year, birth_date, birth_month, birth_year)
  month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  if birth_date > current_date
    current_date += month[birth_month - 1]
    current_month -= 1
  end

  if birth_month > current_month
    current_year -= 1
    current_month += 12
  end

  calculated_date = current_date - birth_date
  calculated_month = current_month - birth_month
  calculated_year = current_year - birth_year

  puts "Present Age\nYears: #{calculated_year}  Months: #{calculated_month}  Days: #{calculated_date}"
end

#find future
def closest_date(dates, queries)
  # Ordena o array de datas em ordem crescente, comparando primeiro o ano, depois o mês e finalmente o dia
  sorted_dates = dates.sort_by { |date| date.split('/').map(&:to_i) }

  queries.map do |query|
     # Converte a data da consulta para um formato comparável
     query_date = query.split('/').map(&:to_i)

     # Encontra a data mais próxima usando uma busca binária modificada
     index = sorted_dates.bsearch_index do |date|
       date_parts = date.split('/').map(&:to_i)
       # Compara as partes da data (ano, mês, dia) em ordem
       if date_parts[2] > query_date[2]
         true
       elsif date_parts[2] == query_date[2]
         if date_parts[1] > query_date[1]
           true
         elsif date_parts[1] == query_date[1]
           date_parts[0] > query_date[0]
         else
           false
         end
       else
         false
       end
     end || sorted_dates.size

     # Se não encontrar uma data após a consulta, retorna -1
     index < sorted_dates.size ? sorted_dates[index] : "-1"
  end
 end

 #missing character
 def missing_character(phrase)
  phrase_array = phrase.downcase.chars
  alphabet = ('a'..'z').to_a
  pangram = alphabet - phrase_array
  puts pangram
end
