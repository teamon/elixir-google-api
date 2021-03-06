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

defmodule GoogleApi.Compute.V1.Model.XpnResourceId do
  @moduledoc """
  Service resource (a.k.a service project) ID.

  ## Attributes

  - id (String.t): The ID of the service resource. In the case of projects, this field matches the project ID (e.g., my-project), not the project number (e.g., 12345678). Defaults to: `null`.
  - type (String.t): The type of the service resource. Defaults to: `null`.
    - Enum - one of [PROJECT, XPN_RESOURCE_TYPE_UNSPECIFIED]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => any(),
          :type => any()
        }

  field(:id)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.XpnResourceId do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.XpnResourceId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.XpnResourceId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
