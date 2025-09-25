defmodule Quiz do
  def main do
    n = [50,20,5,14,70,50]
    mayor(n)
    |> IO.puts()
  end

  def mayor([]), do: 0
  def mayor([n]), do: n
  def mayor(lista) do
      mitad = div(length(lista),2)#llamadas recursivas para obtener el mayor de cada mitad.
      {a,b} = Enum.split(lista,mitad)

      mayor_a = mayor(a)
      mayor_b = mayor(b)

      if mayor_a >= mayor_b do #Retorna el mayor
        mayor_a
      else
        mayor_b
      end
  end
end

Quiz.main()
