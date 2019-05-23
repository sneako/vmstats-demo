defmodule MyApp.Vmstats do
  alias MyApp.Statix

  @behaviour :vmstats_sink

  def collect(:counter, key, value) do
    Statix.set(key, value)
  end

  def collect(:gauge, key, value) do
    Statix.gauge(key, value)
  end

  def collect(:timing, key, value) do
    Statix.timing(key, value)
  end
end
