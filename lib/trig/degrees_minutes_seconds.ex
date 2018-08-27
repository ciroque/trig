defmodule DegreesMinutesSeconds do
  @moduledoc false

  @type t :: %__MODULE__{
    degrees: integer,
    minutes: integer,
    seconds: integer
  }

  defstruct [
    degrees: 0,
    minutes: 0,
    seconds: 0
  ]

  defimpl String.Chars, for: DegreesMinutesSeconds do
    def to_string(%DegreesMinutesSeconds{degrees: degrees, minutes: minutes, seconds: seconds}) do
      "#{degrees}°#{minutes}'#{seconds}''"
    end
  end
end
