defmodule DegreesBehaviour do
  @moduledoc false

  @callback to_decimal_degrees(DegreesMinutesSeconds.t()) :: {:ok, DecimalDegrees.t()}
  @callback to_degrees_minutes_seconds(DecimalDegrees.t()) :: {:ok, DegreesMinutesSeconds.t()}
end
