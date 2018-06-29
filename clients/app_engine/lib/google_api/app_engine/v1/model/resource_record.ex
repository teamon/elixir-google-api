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

defmodule GoogleApi.AppEngine.V1.Model.ResourceRecord do
  @moduledoc """
  A DNS resource record.

  ## Attributes

  - name (String.t): Relative name of the object affected by this record. Only applicable for CNAME records. Example: &#39;www&#39;. Defaults to: `null`.
  - rrdata (String.t): Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1). Defaults to: `null`.
  - type (String.t): Resource record type. Example: AAAA. Defaults to: `null`.
    - Enum - one of [RECORD_TYPE_UNSPECIFIED, A, AAAA, CNAME]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => any(),
          :rrdata => any(),
          :type => any()
        }

  field(:name)
  field(:rrdata)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.ResourceRecord do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.ResourceRecord.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.ResourceRecord do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end