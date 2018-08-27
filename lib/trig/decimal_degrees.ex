defmodule DecimalDegrees do
  @moduledoc false

  @type t :: %__MODULE__{
          degrees: float
        }

  defstruct degrees: 0.0
end
