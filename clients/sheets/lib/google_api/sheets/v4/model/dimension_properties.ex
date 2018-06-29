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

defmodule GoogleApi.Sheets.V4.Model.DimensionProperties do
  @moduledoc """
  Properties about a dimension.

  ## Attributes

  - developerMetadata ([DeveloperMetadata]): The developer metadata associated with a single row or column. Defaults to: `null`.
  - hiddenByFilter (boolean()): True if this dimension is being filtered. This field is read-only. Defaults to: `null`.
  - hiddenByUser (boolean()): True if this dimension is explicitly hidden. Defaults to: `null`.
  - pixelSize (integer()): The height (if a row) or width (if a column) of the dimension in pixels. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :developerMetadata => list(GoogleApi.Sheets.V4.Model.DeveloperMetadata.t()),
          :hiddenByFilter => any(),
          :hiddenByUser => any(),
          :pixelSize => any()
        }

  field(:developerMetadata, as: GoogleApi.Sheets.V4.Model.DeveloperMetadata, type: :list)
  field(:hiddenByFilter)
  field(:hiddenByUser)
  field(:pixelSize)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DimensionProperties do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.DimensionProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DimensionProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
