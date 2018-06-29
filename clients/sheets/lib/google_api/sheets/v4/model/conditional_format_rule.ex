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

defmodule GoogleApi.Sheets.V4.Model.ConditionalFormatRule do
  @moduledoc """
  A rule describing a conditional format.

  ## Attributes

  - booleanRule (BooleanRule): The formatting is either \&quot;on\&quot; or \&quot;off\&quot; according to the rule. Defaults to: `null`.
  - gradientRule (GradientRule): The formatting will vary based on the gradients in the rule. Defaults to: `null`.
  - ranges ([GridRange]): The ranges that are formatted if the condition is true. All the ranges must be on the same grid. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :booleanRule => GoogleApi.Sheets.V4.Model.BooleanRule.t(),
          :gradientRule => GoogleApi.Sheets.V4.Model.GradientRule.t(),
          :ranges => list(GoogleApi.Sheets.V4.Model.GridRange.t())
        }

  field(:booleanRule, as: GoogleApi.Sheets.V4.Model.BooleanRule)
  field(:gradientRule, as: GoogleApi.Sheets.V4.Model.GradientRule)
  field(:ranges, as: GoogleApi.Sheets.V4.Model.GridRange, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ConditionalFormatRule do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.ConditionalFormatRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ConditionalFormatRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
