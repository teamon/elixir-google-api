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

defmodule GoogleApi.Sheets.V4.Model.CandlestickData do
  @moduledoc """
  The Candlestick chart data, each containing the low, open, close, and high values for a series.

  ## Attributes

  - closeSeries (CandlestickSeries): The range data (vertical axis) for the close/final value for each candle. This is the top of the candle body.  If greater than the open value the candle will be filled.  Otherwise the candle will be hollow. Defaults to: `null`.
  - highSeries (CandlestickSeries): The range data (vertical axis) for the high/maximum value for each candle. This is the top of the candle&#39;s center line. Defaults to: `null`.
  - lowSeries (CandlestickSeries): The range data (vertical axis) for the low/minimum value for each candle. This is the bottom of the candle&#39;s center line. Defaults to: `null`.
  - openSeries (CandlestickSeries): The range data (vertical axis) for the open/initial value for each candle. This is the bottom of the candle body.  If less than the close value the candle will be filled.  Otherwise the candle will be hollow. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :closeSeries => GoogleApi.Sheets.V4.Model.CandlestickSeries.t(),
          :highSeries => GoogleApi.Sheets.V4.Model.CandlestickSeries.t(),
          :lowSeries => GoogleApi.Sheets.V4.Model.CandlestickSeries.t(),
          :openSeries => GoogleApi.Sheets.V4.Model.CandlestickSeries.t()
        }

  field(:closeSeries, as: GoogleApi.Sheets.V4.Model.CandlestickSeries)
  field(:highSeries, as: GoogleApi.Sheets.V4.Model.CandlestickSeries)
  field(:lowSeries, as: GoogleApi.Sheets.V4.Model.CandlestickSeries)
  field(:openSeries, as: GoogleApi.Sheets.V4.Model.CandlestickSeries)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.CandlestickData do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.CandlestickData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.CandlestickData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
