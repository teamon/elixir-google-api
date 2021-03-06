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

defmodule GoogleApi.PubSub.V1.Model.PullResponse do
  @moduledoc """
  Response for the &#x60;Pull&#x60; method.

  ## Attributes

  - receivedMessages ([ReceivedMessage]): Received Pub/Sub messages. The Pub/Sub system will return zero messages if there are no more available in the backlog. The Pub/Sub system may return fewer than the &#x60;maxMessages&#x60; requested even if there are more messages available in the backlog. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :receivedMessages => list(GoogleApi.PubSub.V1.Model.ReceivedMessage.t())
        }

  field(:receivedMessages, as: GoogleApi.PubSub.V1.Model.ReceivedMessage, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.PullResponse do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.PullResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.PullResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
