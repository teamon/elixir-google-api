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

defmodule GoogleApi.Sheets.V4.Model.UpdateValuesResponse do
  @moduledoc """
  The response when updating a range of values in a spreadsheet.

  ## Attributes

  - spreadsheetId (String.t): The spreadsheet the updates were applied to. Defaults to: `null`.
  - updatedCells (integer()): The number of cells updated. Defaults to: `null`.
  - updatedColumns (integer()): The number of columns where at least one cell in the column was updated. Defaults to: `null`.
  - updatedData (ValueRange): The values of the cells after updates were applied. This is only included if the request&#39;s &#x60;includeValuesInResponse&#x60; field was &#x60;true&#x60;. Defaults to: `null`.
  - updatedRange (String.t): The range (in A1 notation) that updates were applied to. Defaults to: `null`.
  - updatedRows (integer()): The number of rows where at least one cell in the row was updated. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :spreadsheetId => any(),
          :updatedCells => any(),
          :updatedColumns => any(),
          :updatedData => GoogleApi.Sheets.V4.Model.ValueRange.t(),
          :updatedRange => any(),
          :updatedRows => any()
        }

  field(:spreadsheetId)
  field(:updatedCells)
  field(:updatedColumns)
  field(:updatedData, as: GoogleApi.Sheets.V4.Model.ValueRange)
  field(:updatedRange)
  field(:updatedRows)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.UpdateValuesResponse do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.UpdateValuesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.UpdateValuesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
