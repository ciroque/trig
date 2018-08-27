defmodule Degrees do
  @moduledoc false

  @behaviour DegreesBehaviour

  def to_decimal_degrees(%DegreesMinutesSeconds{
        degrees: degrees,
        minutes: minutes,
        seconds: seconds
      }) do
    decimal_degrees = degrees + minutes / 60 + seconds / 3600
    {:ok, %{degrees: decimal_degrees}}
  end

  def to_degrees_minutes_seconds(%DecimalDegrees{degrees: degrees}) do
    whole_degrees = :erlang.floor(degrees)
    fractional_degrees = degrees - whole_degrees
    minutes = fractional_degrees * 60
    whole_minutes = :erlang.floor(minutes)
    seconds = (minutes - whole_minutes) * 60

    {:ok,
     %DegreesMinutesSeconds{degrees: whole_degrees, minutes: whole_minutes, seconds: seconds}}
  end
end
