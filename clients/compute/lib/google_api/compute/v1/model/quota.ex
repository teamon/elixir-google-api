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

defmodule GoogleApi.Compute.V1.Model.Quota do
  @moduledoc """
  A quotas entry.

  ## Attributes

  - limit (float()): [Output Only] Quota limit for this metric. Defaults to: `null`.
  - metric (String.t): [Output Only] Name of the quota metric. Defaults to: `null`.
    - Enum - one of [AUTOSCALERS, BACKEND_BUCKETS, BACKEND_SERVICES, COMMITMENTS, CPUS, CPUS_ALL_REGIONS, DISKS_TOTAL_GB, FIREWALLS, FORWARDING_RULES, HEALTH_CHECKS, IMAGES, INSTANCES, INSTANCE_GROUPS, INSTANCE_GROUP_MANAGERS, INSTANCE_TEMPLATES, INTERCONNECTS, INTERCONNECT_ATTACHMENTS_PER_REGION, INTERCONNECT_ATTACHMENTS_TOTAL_MBPS, INTERNAL_ADDRESSES, IN_USE_ADDRESSES, LOCAL_SSD_TOTAL_GB, NETWORKS, NVIDIA_K80_GPUS, NVIDIA_P100_GPUS, NVIDIA_V100_GPUS, PREEMPTIBLE_CPUS, PREEMPTIBLE_LOCAL_SSD_GB, PREEMPTIBLE_NVIDIA_K80_GPUS, PREEMPTIBLE_NVIDIA_P100_GPUS, PREEMPTIBLE_NVIDIA_V100_GPUS, REGIONAL_AUTOSCALERS, REGIONAL_INSTANCE_GROUP_MANAGERS, ROUTERS, ROUTES, SECURITY_POLICIES, SECURITY_POLICY_RULES, SNAPSHOTS, SSD_TOTAL_GB, SSL_CERTIFICATES, STATIC_ADDRESSES, SUBNETWORKS, TARGET_HTTPS_PROXIES, TARGET_HTTP_PROXIES, TARGET_INSTANCES, TARGET_POOLS, TARGET_SSL_PROXIES, TARGET_TCP_PROXIES, TARGET_VPN_GATEWAYS, URL_MAPS, VPN_TUNNELS]
  - usage (float()): [Output Only] Current usage of this metric. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :limit => any(),
          :metric => any(),
          :usage => any()
        }

  field(:limit)
  field(:metric)
  field(:usage)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Quota do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Quota.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Quota do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
