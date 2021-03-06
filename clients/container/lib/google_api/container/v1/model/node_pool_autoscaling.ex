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

defmodule GoogleApi.Container.V1.Model.NodePoolAutoscaling do
  @moduledoc """
  NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.

  ## Attributes

  - enabled (boolean()): Is autoscaling enabled for this node pool. Defaults to: `null`.
  - maxNodeCount (integer()): Maximum number of nodes in the NodePool. Must be &gt;&#x3D; min_node_count. There has to enough quota to scale up the cluster. Defaults to: `null`.
  - minNodeCount (integer()): Minimum number of nodes in the NodePool. Must be &gt;&#x3D; 1 and &lt;&#x3D; max_node_count. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabled => any(),
          :maxNodeCount => any(),
          :minNodeCount => any()
        }

  field(:enabled)
  field(:maxNodeCount)
  field(:minNodeCount)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodePoolAutoscaling do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.NodePoolAutoscaling.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.NodePoolAutoscaling do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
