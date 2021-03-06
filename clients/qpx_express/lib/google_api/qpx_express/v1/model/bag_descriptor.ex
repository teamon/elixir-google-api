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

defmodule GoogleApi.QPXExpress.V1.Model.BagDescriptor do
  @moduledoc """
  Information about an item of baggage.

  ## Attributes

  - commercialName (String): Provides the commercial name for an optional service. Defaults to: `null`.
  - count (Integer): How many of this type of bag will be checked on this flight. Defaults to: `null`.
  - description (List[String]): A description of the baggage. Defaults to: `null`.
  - kind (String): Identifies this as a baggage object. Value: the fixed string qpxexpress#bagDescriptor. Defaults to: `null`.
  - subcode (String): The standard IATA subcode used to identify this optional service. Defaults to: `null`.
  """

  defstruct [
    :"commercialName",
    :"count",
    :"description",
    :"kind",
    :"subcode"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.QPXExpress.V1.Model.BagDescriptor do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.QPXExpress.V1.Model.BagDescriptor do
  def encode(value, options) do
    GoogleApi.QPXExpress.V1.Deserializer.serialize_non_nil(value, options)
  end
end

