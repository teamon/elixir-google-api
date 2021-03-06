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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1BatchOperationMetadata do
  @moduledoc """
  Metadata for the batch operations such as the current state.  This is included in the &#x60;metadata&#x60; field of the &#x60;Operation&#x60; returned by the &#x60;GetOperation&#x60; call of the &#x60;google::longrunning::Operations&#x60; service.

  ## Attributes

  - endTime (DateTime.t): The time when the batch request is finished and google.longrunning.Operation.done is set to true. Defaults to: `null`.
  - state (String.t): The current state of the batch operation. Defaults to: `null`.
    - Enum - one of [STATE_UNSPECIFIED, PROCESSING, SUCCESSFUL, FAILED, CANCELLED]
  - submitTime (DateTime.t): The time when the batch request was submitted to the server. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t(),
          :state => any(),
          :submitTime => DateTime.t()
        }

  field(:endTime, as: DateTime)
  field(:state)
  field(:submitTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1BatchOperationMetadata do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1BatchOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1BatchOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
