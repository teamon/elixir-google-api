# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.BatchClearValuesByDataFilterRequest do
  @moduledoc """
  The request for clearing more than one range selected by a DataFilter in a spreadsheet.

  ## Attributes

  - dataFilters ([DataFilter]): The DataFilters used to determine which ranges to clear. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          dataFilters: list(GoogleApi.Sheets.V4.Model.DataFilter.t())
        }

  defstruct [
    :dataFilters
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BatchClearValuesByDataFilterRequest do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:dataFilters, :list, GoogleApi.Sheets.V4.Model.DataFilter, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BatchClearValuesByDataFilterRequest do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end