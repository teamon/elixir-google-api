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

defmodule GoogleApi.Sheets.V4.Model.NumberFormat do
  @moduledoc """
  The number format of a cell.

  ## Attributes

  - pattern (String.t): Pattern string used for formatting.  If not set, a default pattern based on the user&#39;s locale will be used if necessary for the given type. See the [Date and Number Formats guide](/sheets/api/guides/formats) for more information about the supported patterns. Defaults to: `null`.
  - type (String.t): The type of the number format. When writing, this field must be set. Defaults to: `null`.
    - Enum - one of [NUMBER_FORMAT_TYPE_UNSPECIFIED, TEXT, NUMBER, PERCENT, CURRENCY, DATE, TIME, DATE_TIME, SCIENTIFIC]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pattern => any(),
          :type => any()
        }

  field(:pattern)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.NumberFormat do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.NumberFormat.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.NumberFormat do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
