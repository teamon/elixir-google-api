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

defmodule GoogleApi.Sheets.V4.Model.ClearValuesResponse do
  @moduledoc """
  The response when clearing a range of values in a spreadsheet.

  ## Attributes

  - clearedRange (String.t): The range (in A1 notation) that was cleared. (If the request was for an unbounded range or a ranger larger  than the bounds of the sheet, this will be the actual range  that was cleared, bounded to the sheet&#39;s limits.) Defaults to: `null`.
  - spreadsheetId (String.t): The spreadsheet the updates were applied to. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clearedRange => any(),
          :spreadsheetId => any()
        }

  field(:clearedRange)
  field(:spreadsheetId)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ClearValuesResponse do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.ClearValuesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ClearValuesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
