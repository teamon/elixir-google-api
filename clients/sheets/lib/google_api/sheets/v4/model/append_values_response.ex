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

defmodule GoogleApi.Sheets.V4.Model.AppendValuesResponse do
  @moduledoc """
  The response when updating a range of values in a spreadsheet.

  ## Attributes

  - spreadsheetId (String.t): The spreadsheet the updates were applied to. Defaults to: `null`.
  - tableRange (String.t): The range (in A1 notation) of the table that values are being appended to (before the values were appended). Empty if no table was found. Defaults to: `null`.
  - updates (UpdateValuesResponse): Information about the updates that were applied. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :spreadsheetId => any(),
          :tableRange => any(),
          :updates => GoogleApi.Sheets.V4.Model.UpdateValuesResponse.t()
        }

  field(:spreadsheetId)
  field(:tableRange)
  field(:updates, as: GoogleApi.Sheets.V4.Model.UpdateValuesResponse)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.AppendValuesResponse do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.AppendValuesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.AppendValuesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
