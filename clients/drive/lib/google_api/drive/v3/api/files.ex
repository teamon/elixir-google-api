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

defmodule GoogleApi.Drive.V3.Api.Files do
  @moduledoc """
  API calls for all endpoints tagged `Files`.
  """

  alias GoogleApi.Drive.V3.Connection
  alias GoogleApi.Gax.{Request, Response}


  @doc """
  Creates a copy of a file and applies any requested updates with patch semantics.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :ignoreDefaultVisibility (boolean()): Whether to ignore the domain&#39;s default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.
    - :keepRevisionForever (boolean()): Whether to set the &#39;keepForever&#39; field in the new head revision. This is only applicable to files with binary content in Drive.
    - :ocrLanguage (String.t): A language hint for OCR processing during image import (ISO 639-1 code).
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.
    - :body (File):

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.File{}} on success
  {:error, info} on failure
  """
  @spec drive_files_copy(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.File.t} | {:error, Tesla.Env.t}
  def drive_files_copy(connection, file_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"ignoreDefaultVisibility" => :query,
      :"keepRevisionForever" => :query,
      :"ocrLanguage" => :query,
      :"supportsTeamDrives" => :query,
      :"body" => :body
    }
    request =
      Request.new
      |> Request.method(:post)
      |> Request.url("/drive/v3/files/{fileId}/copy", %{
         "fileId" => URI.encode_www_form(file_id)
       })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Drive.V3.Model.File{})
  end

  @doc """
  Creates a new file.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :ignoreDefaultVisibility (boolean()): Whether to ignore the domain&#39;s default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.
    - :keepRevisionForever (boolean()): Whether to set the &#39;keepForever&#39; field in the new head revision. This is only applicable to files with binary content in Drive.
    - :ocrLanguage (String.t): A language hint for OCR processing during image import (ISO 639-1 code).
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.
    - :useContentAsIndexableText (boolean()): Whether to use the uploaded content as indexable text.
    - :body (File):

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.File{}} on success
  {:error, info} on failure
  """
  @spec drive_files_create(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.File.t} | {:error, Tesla.Env.t}
  def drive_files_create(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"ignoreDefaultVisibility" => :query,
      :"keepRevisionForever" => :query,
      :"ocrLanguage" => :query,
      :"supportsTeamDrives" => :query,
      :"useContentAsIndexableText" => :query,
      :"body" => :body
    }
    request =
      Request.new
      |> Request.method(:post)
      |> Request.url("/drive/v3/files")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Drive.V3.Model.File{})
  end

  @doc """
  Creates a new file.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - upload_type (String.t): Upload type. Must be \&quot;resumable\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :ignoreDefaultVisibility (boolean()): Whether to ignore the domain&#39;s default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.
    - :keepRevisionForever (boolean()): Whether to set the &#39;keepForever&#39; field in the new head revision. This is only applicable to files with binary content in Drive.
    - :ocrLanguage (String.t): A language hint for OCR processing during image import (ISO 639-1 code).
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.
    - :useContentAsIndexableText (boolean()): Whether to use the uploaded content as indexable text.
    - :body (File):

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec drive_files_create_resumable(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def drive_files_create_resumable(connection, upload_type, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"ignoreDefaultVisibility" => :query,
      :"keepRevisionForever" => :query,
      :"ocrLanguage" => :query,
      :"supportsTeamDrives" => :query,
      :"useContentAsIndexableText" => :query,
      :"body" => :body
    }
    request =
      Request.new
      |> Request.method(:post)
      |> Request.url("/resumable/upload/drive/v3/files")
      |> Request.add_param(:query, :"uploadType", upload_type)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(decode: false)
  end

  @doc """
  Creates a new file.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - upload_type (String.t): Upload type. Must be \&quot;multipart\&quot;.
  - metadata (File): File metadata.
  - data (String.t): The file to upload.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :ignoreDefaultVisibility (boolean()): Whether to ignore the domain&#39;s default visibility settings for the created file. Domain administrators can choose to make all uploaded files visible to the domain by default; this parameter bypasses that behavior for the request. Permissions are still inherited from parent folders.
    - :keepRevisionForever (boolean()): Whether to set the &#39;keepForever&#39; field in the new head revision. This is only applicable to files with binary content in Drive.
    - :ocrLanguage (String.t): A language hint for OCR processing during image import (ISO 639-1 code).
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.
    - :useContentAsIndexableText (boolean()): Whether to use the uploaded content as indexable text.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.File{}} on success
  {:error, info} on failure
  """
  @spec drive_files_create_simple(Tesla.Env.client, String.t, GoogleApi.Drive.V3.Model.File.t, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.File.t} | {:error, Tesla.Env.t}
  def drive_files_create_simple(connection, upload_type, metadata, data, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"ignoreDefaultVisibility" => :query,
      :"keepRevisionForever" => :query,
      :"ocrLanguage" => :query,
      :"supportsTeamDrives" => :query,
      :"useContentAsIndexableText" => :query
    }
    request =
      Request.new
      |> Request.method(:post)
      |> Request.url("/upload/drive/v3/files")
      |> Request.add_param(:query, :"uploadType", upload_type)
      |> Request.add_param(:body, :"metadata", metadata)
      |> Request.add_param(:file, :"data", data)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Drive.V3.Model.File{})
  end

  @doc """
  Permanently deletes a file owned by the user without moving it to the trash. If the file belongs to a Team Drive the user must be an organizer on the parent. If the target is a folder, all descendants owned by the user are also deleted.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec drive_files_delete(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def drive_files_delete(connection, file_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"supportsTeamDrives" => :query
    }
    request =
      Request.new
      |> Request.method(:delete)
      |> Request.url("/drive/v3/files/{fileId}", %{
         "fileId" => URI.encode_www_form(file_id)
       })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(decode: false)
  end

  @doc """
  Permanently deletes all of the user&#39;s trashed files.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec drive_files_empty_trash(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def drive_files_empty_trash(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    request =
      Request.new
      |> Request.method(:delete)
      |> Request.url("/drive/v3/files/trash")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(decode: false)
  end

  @doc """
  Exports a Google Doc to the requested MIME type and returns the exported content. Please note that the exported content is limited to 10MB.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - mime_type (String.t): The MIME type of the format requested for this export.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec drive_files_export(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def drive_files_export(connection, file_id, mime_type, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    request =
      Request.new
      |> Request.method(:get)
      |> Request.url("/drive/v3/files/{fileId}/export", %{
         "fileId" => URI.encode_www_form(file_id)
       })
      |> Request.add_param(:query, :"mimeType", mime_type)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(decode: false)
  end

  @doc """
  Generates a set of file IDs which can be provided in create requests.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :count (integer()): The number of IDs to return.
    - :space (String.t): The space in which the IDs can be used to create new files. Supported values are &#39;drive&#39; and &#39;appDataFolder&#39;.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.GeneratedIds{}} on success
  {:error, info} on failure
  """
  @spec drive_files_generate_ids(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.GeneratedIds.t} | {:error, Tesla.Env.t}
  def drive_files_generate_ids(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"count" => :query,
      :"space" => :query
    }
    request =
      Request.new
      |> Request.method(:get)
      |> Request.url("/drive/v3/files/generateIds")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Drive.V3.Model.GeneratedIds{})
  end

  @doc """
  Gets a file&#39;s metadata or content by ID.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :acknowledgeAbuse (boolean()): Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt&#x3D;media.
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.File{}} on success
  {:error, info} on failure
  """
  @spec drive_files_get(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.File.t} | {:error, Tesla.Env.t}
  def drive_files_get(connection, file_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"acknowledgeAbuse" => :query,
      :"supportsTeamDrives" => :query
    }
    request =
      Request.new
      |> Request.method(:get)
      |> Request.url("/drive/v3/files/{fileId}", %{
         "fileId" => URI.encode_www_form(file_id)
       })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Drive.V3.Model.File{})
  end

  @doc """
  Lists or searches files.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :corpora (String.t): Comma-separated list of bodies of items (files/documents) to which the query applies. Supported bodies are &#39;user&#39;, &#39;domain&#39;, &#39;teamDrive&#39; and &#39;allTeamDrives&#39;. &#39;allTeamDrives&#39; must be combined with &#39;user&#39;; all other values must be used in isolation. Prefer &#39;user&#39; or &#39;teamDrive&#39; to &#39;allTeamDrives&#39; for efficiency.
    - :corpus (String.t): The source of files to list. Deprecated: use &#39;corpora&#39; instead.
    - :includeTeamDriveItems (boolean()): Whether Team Drive items should be included in results.
    - :orderBy (String.t): A comma-separated list of sort keys. Valid keys are &#39;createdTime&#39;, &#39;folder&#39;, &#39;modifiedByMeTime&#39;, &#39;modifiedTime&#39;, &#39;name&#39;, &#39;name_natural&#39;, &#39;quotaBytesUsed&#39;, &#39;recency&#39;, &#39;sharedWithMeTime&#39;, &#39;starred&#39;, and &#39;viewedByMeTime&#39;. Each key sorts ascending by default, but may be reversed with the &#39;desc&#39; modifier. Example usage: ?orderBy&#x3D;folder,modifiedTime desc,name. Please note that there is a current limitation for users with approximately one million files in which the requested sort order is ignored.
    - :pageSize (integer()): The maximum number of files to return per page. Partial or empty result pages are possible even before the end of the files list has been reached.
    - :pageToken (String.t): The token for continuing a previous list request on the next page. This should be set to the value of &#39;nextPageToken&#39; from the previous response.
    - :q (String.t): A query for filtering the file results. See the \&quot;Search for Files\&quot; guide for supported syntax.
    - :spaces (String.t): A comma-separated list of spaces to query within the corpus. Supported values are &#39;drive&#39;, &#39;appDataFolder&#39; and &#39;photos&#39;.
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.
    - :teamDriveId (String.t): ID of Team Drive to search.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.FileList{}} on success
  {:error, info} on failure
  """
  @spec drive_files_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.FileList.t} | {:error, Tesla.Env.t}
  def drive_files_list(connection, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"corpora" => :query,
      :"corpus" => :query,
      :"includeTeamDriveItems" => :query,
      :"orderBy" => :query,
      :"pageSize" => :query,
      :"pageToken" => :query,
      :"q" => :query,
      :"spaces" => :query,
      :"supportsTeamDrives" => :query,
      :"teamDriveId" => :query
    }
    request =
      Request.new
      |> Request.method(:get)
      |> Request.url("/drive/v3/files")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Drive.V3.Model.FileList{})
  end

  @doc """
  Updates a file&#39;s metadata and/or content with patch semantics.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :addParents (String.t): A comma-separated list of parent IDs to add.
    - :keepRevisionForever (boolean()): Whether to set the &#39;keepForever&#39; field in the new head revision. This is only applicable to files with binary content in Drive.
    - :ocrLanguage (String.t): A language hint for OCR processing during image import (ISO 639-1 code).
    - :removeParents (String.t): A comma-separated list of parent IDs to remove.
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.
    - :useContentAsIndexableText (boolean()): Whether to use the uploaded content as indexable text.
    - :body (File):

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.File{}} on success
  {:error, info} on failure
  """
  @spec drive_files_update(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.File.t} | {:error, Tesla.Env.t}
  def drive_files_update(connection, file_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"addParents" => :query,
      :"keepRevisionForever" => :query,
      :"ocrLanguage" => :query,
      :"removeParents" => :query,
      :"supportsTeamDrives" => :query,
      :"useContentAsIndexableText" => :query,
      :"body" => :body
    }
    request =
      Request.new
      |> Request.method(:patch)
      |> Request.url("/drive/v3/files/{fileId}", %{
         "fileId" => URI.encode_www_form(file_id)
       })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Drive.V3.Model.File{})
  end

  @doc """
  Updates a file&#39;s metadata and/or content with patch semantics.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - upload_type (String.t): Upload type. Must be \&quot;resumable\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :addParents (String.t): A comma-separated list of parent IDs to add.
    - :keepRevisionForever (boolean()): Whether to set the &#39;keepForever&#39; field in the new head revision. This is only applicable to files with binary content in Drive.
    - :ocrLanguage (String.t): A language hint for OCR processing during image import (ISO 639-1 code).
    - :removeParents (String.t): A comma-separated list of parent IDs to remove.
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.
    - :useContentAsIndexableText (boolean()): Whether to use the uploaded content as indexable text.
    - :body (File):

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec drive_files_update_resumable(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def drive_files_update_resumable(connection, file_id, upload_type, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"addParents" => :query,
      :"keepRevisionForever" => :query,
      :"ocrLanguage" => :query,
      :"removeParents" => :query,
      :"supportsTeamDrives" => :query,
      :"useContentAsIndexableText" => :query,
      :"body" => :body
    }
    request =
      Request.new
      |> Request.method(:patch)
      |> Request.url("/resumable/upload/drive/v3/files/{fileId}", %{
         "fileId" => URI.encode_www_form(file_id)
       })
      |> Request.add_param(:query, :"uploadType", upload_type)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(decode: false)
  end

  @doc """
  Updates a file&#39;s metadata and/or content with patch semantics.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - upload_type (String.t): Upload type. Must be \&quot;multipart\&quot;.
  - metadata (File): File metadata.
  - data (String.t): The file to upload.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :addParents (String.t): A comma-separated list of parent IDs to add.
    - :keepRevisionForever (boolean()): Whether to set the &#39;keepForever&#39; field in the new head revision. This is only applicable to files with binary content in Drive.
    - :ocrLanguage (String.t): A language hint for OCR processing during image import (ISO 639-1 code).
    - :removeParents (String.t): A comma-separated list of parent IDs to remove.
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.
    - :useContentAsIndexableText (boolean()): Whether to use the uploaded content as indexable text.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.File{}} on success
  {:error, info} on failure
  """
  @spec drive_files_update_simple(Tesla.Env.client, String.t, String.t, GoogleApi.Drive.V3.Model.File.t, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.File.t} | {:error, Tesla.Env.t}
  def drive_files_update_simple(connection, file_id, upload_type, metadata, data, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"addParents" => :query,
      :"keepRevisionForever" => :query,
      :"ocrLanguage" => :query,
      :"removeParents" => :query,
      :"supportsTeamDrives" => :query,
      :"useContentAsIndexableText" => :query
    }
    request =
      Request.new
      |> Request.method(:patch)
      |> Request.url("/upload/drive/v3/files/{fileId}", %{
         "fileId" => URI.encode_www_form(file_id)
       })
      |> Request.add_param(:query, :"uploadType", upload_type)
      |> Request.add_param(:body, :"metadata", metadata)
      |> Request.add_param(:file, :"data", data)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Drive.V3.Model.File{})
  end

  @doc """
  Subscribes to changes to a file

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :acknowledgeAbuse (boolean()): Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt&#x3D;media.
    - :supportsTeamDrives (boolean()): Whether the requesting application supports Team Drives.
    - :resource (Channel):

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Channel{}} on success
  {:error, info} on failure
  """
  @spec drive_files_watch(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Drive.V3.Model.Channel.t} | {:error, Tesla.Env.t}
  def drive_files_watch(connection, file_id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"acknowledgeAbuse" => :query,
      :"supportsTeamDrives" => :query,
      :"resource" => :body
    }
    request =
      Request.new
      |> Request.method(:post)
      |> Request.url("/drive/v3/files/{fileId}/watch", %{
         "fileId" => URI.encode_www_form(file_id)
       })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Drive.V3.Model.Channel{})
  end
end
