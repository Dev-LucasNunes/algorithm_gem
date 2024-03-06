require 'bundler/setup'
require 'ruby_algorithm'

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

#  # Exemplo de uso
#  dates = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
#  queries = ["23/3/4345", "12/3/2"]

#  puts closest_date(dates, queries).join("\n")


# dates = ["22/4/1233", "1/3/633", "23/5/56645", "4/12/233"]
# # sorted_dates = dates.sort_by { |date| date.split('/').map(&:to_i) }
# sorted_dates = dates.split('/')
# puts sorted_dates
