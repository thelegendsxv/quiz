defmodule SinVenceras do
  def main do
    n = [50,20,5,14,70,50]
    mayor(n)
    |> IO.puts()
  end

  def mayor([n]), do: n

  def mayor([h | t]) do
    mayor_tail = mayor(t)
    if h >= mayor_tail do
      h
    else
      mayor_tail
    end
  end
end

SinVenceras.main()
