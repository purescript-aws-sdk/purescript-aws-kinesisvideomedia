## Module AWS.KinesisVideoMedia.Types

#### `options`

``` purescript
options :: Options
```

#### `ClientLimitExceededException`

``` purescript
newtype ClientLimitExceededException
  = ClientLimitExceededException { "Message" :: Maybe (ErrorMessage) }
```

<p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.</p>

##### Instances
``` purescript
Newtype ClientLimitExceededException _
Generic ClientLimitExceededException _
Show ClientLimitExceededException
Decode ClientLimitExceededException
Encode ClientLimitExceededException
```

#### `newClientLimitExceededException`

``` purescript
newClientLimitExceededException :: ClientLimitExceededException
```

Constructs ClientLimitExceededException from required parameters

#### `newClientLimitExceededException'`

``` purescript
newClientLimitExceededException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> ClientLimitExceededException
```

Constructs ClientLimitExceededException's fields from required parameters

#### `ConnectionLimitExceededException`

``` purescript
newtype ConnectionLimitExceededException
  = ConnectionLimitExceededException { "Message" :: Maybe (ErrorMessage) }
```

<p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client connections.</p>

##### Instances
``` purescript
Newtype ConnectionLimitExceededException _
Generic ConnectionLimitExceededException _
Show ConnectionLimitExceededException
Decode ConnectionLimitExceededException
Encode ConnectionLimitExceededException
```

#### `newConnectionLimitExceededException`

``` purescript
newConnectionLimitExceededException :: ConnectionLimitExceededException
```

Constructs ConnectionLimitExceededException from required parameters

#### `newConnectionLimitExceededException'`

``` purescript
newConnectionLimitExceededException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> ConnectionLimitExceededException
```

Constructs ConnectionLimitExceededException's fields from required parameters

#### `ContentType`

``` purescript
newtype ContentType
  = ContentType String
```

##### Instances
``` purescript
Newtype ContentType _
Generic ContentType _
Show ContentType
Decode ContentType
Encode ContentType
```

#### `ContinuationToken`

``` purescript
newtype ContinuationToken
  = ContinuationToken String
```

##### Instances
``` purescript
Newtype ContinuationToken _
Generic ContinuationToken _
Show ContinuationToken
Decode ContinuationToken
Encode ContinuationToken
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `FragmentNumberString`

``` purescript
newtype FragmentNumberString
  = FragmentNumberString String
```

##### Instances
``` purescript
Newtype FragmentNumberString _
Generic FragmentNumberString _
Show FragmentNumberString
Decode FragmentNumberString
Encode FragmentNumberString
```

#### `GetMediaInput`

``` purescript
newtype GetMediaInput
  = GetMediaInput { "StreamName" :: Maybe (StreamName), "StreamARN" :: Maybe (ResourceARN), "StartSelector" :: StartSelector }
```

##### Instances
``` purescript
Newtype GetMediaInput _
Generic GetMediaInput _
Show GetMediaInput
Decode GetMediaInput
Encode GetMediaInput
```

#### `newGetMediaInput`

``` purescript
newGetMediaInput :: StartSelector -> GetMediaInput
```

Constructs GetMediaInput from required parameters

#### `newGetMediaInput'`

``` purescript
newGetMediaInput' :: StartSelector -> ({ "StreamName" :: Maybe (StreamName), "StreamARN" :: Maybe (ResourceARN), "StartSelector" :: StartSelector } -> { "StreamName" :: Maybe (StreamName), "StreamARN" :: Maybe (ResourceARN), "StartSelector" :: StartSelector }) -> GetMediaInput
```

Constructs GetMediaInput's fields from required parameters

#### `GetMediaOutput`

``` purescript
newtype GetMediaOutput
  = GetMediaOutput { "ContentType" :: Maybe (ContentType), "Payload" :: Maybe (Payload) }
```

##### Instances
``` purescript
Newtype GetMediaOutput _
Generic GetMediaOutput _
Show GetMediaOutput
Decode GetMediaOutput
Encode GetMediaOutput
```

#### `newGetMediaOutput`

``` purescript
newGetMediaOutput :: GetMediaOutput
```

Constructs GetMediaOutput from required parameters

#### `newGetMediaOutput'`

``` purescript
newGetMediaOutput' :: ({ "ContentType" :: Maybe (ContentType), "Payload" :: Maybe (Payload) } -> { "ContentType" :: Maybe (ContentType), "Payload" :: Maybe (Payload) }) -> GetMediaOutput
```

Constructs GetMediaOutput's fields from required parameters

#### `InvalidArgumentException`

``` purescript
newtype InvalidArgumentException
  = InvalidArgumentException { "Message" :: Maybe (ErrorMessage) }
```

<p>The value for this input parameter is invalid.</p>

##### Instances
``` purescript
Newtype InvalidArgumentException _
Generic InvalidArgumentException _
Show InvalidArgumentException
Decode InvalidArgumentException
Encode InvalidArgumentException
```

#### `newInvalidArgumentException`

``` purescript
newInvalidArgumentException :: InvalidArgumentException
```

Constructs InvalidArgumentException from required parameters

#### `newInvalidArgumentException'`

``` purescript
newInvalidArgumentException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> InvalidArgumentException
```

Constructs InvalidArgumentException's fields from required parameters

#### `InvalidEndpointException`

``` purescript
newtype InvalidEndpointException
  = InvalidEndpointException { "Message" :: Maybe (ErrorMessage) }
```

<p> Status Code: 400, Caller used wrong endpoint to write data to a stream. On receiving such an exception, the user must call <code>GetDataEndpoint</code> with <code>AccessMode</code> set to "READ" and use the endpoint Kinesis Video returns in the next <code>GetMedia</code> call. </p>

##### Instances
``` purescript
Newtype InvalidEndpointException _
Generic InvalidEndpointException _
Show InvalidEndpointException
Decode InvalidEndpointException
Encode InvalidEndpointException
```

#### `newInvalidEndpointException`

``` purescript
newInvalidEndpointException :: InvalidEndpointException
```

Constructs InvalidEndpointException from required parameters

#### `newInvalidEndpointException'`

``` purescript
newInvalidEndpointException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> InvalidEndpointException
```

Constructs InvalidEndpointException's fields from required parameters

#### `NotAuthorizedException`

``` purescript
newtype NotAuthorizedException
  = NotAuthorizedException { "Message" :: Maybe (ErrorMessage) }
```

<p>Status Code: 403, The caller is not authorized to perform an operation on the given stream, or the token has expired.</p>

##### Instances
``` purescript
Newtype NotAuthorizedException _
Generic NotAuthorizedException _
Show NotAuthorizedException
Decode NotAuthorizedException
Encode NotAuthorizedException
```

#### `newNotAuthorizedException`

``` purescript
newNotAuthorizedException :: NotAuthorizedException
```

Constructs NotAuthorizedException from required parameters

#### `newNotAuthorizedException'`

``` purescript
newNotAuthorizedException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> NotAuthorizedException
```

Constructs NotAuthorizedException's fields from required parameters

#### `Payload`

``` purescript
newtype Payload
  = Payload String
```

##### Instances
``` purescript
Newtype Payload _
Generic Payload _
Show Payload
Decode Payload
Encode Payload
```

#### `ResourceARN`

``` purescript
newtype ResourceARN
  = ResourceARN String
```

##### Instances
``` purescript
Newtype ResourceARN _
Generic ResourceARN _
Show ResourceARN
Decode ResourceARN
Encode ResourceARN
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { "Message" :: Maybe (ErrorMessage) }
```

<p>Status Code: 404, The stream with the given name does not exist.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ "Message" :: Maybe (ErrorMessage) } -> { "Message" :: Maybe (ErrorMessage) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `StartSelector`

``` purescript
newtype StartSelector
  = StartSelector { "StartSelectorType" :: StartSelectorType, "AfterFragmentNumber" :: Maybe (FragmentNumberString), "StartTimestamp" :: Maybe (Timestamp), "ContinuationToken" :: Maybe (ContinuationToken) }
```

<p>Identifies the chunk on the Kinesis video stream where you want the <code>GetMedia</code> API to start returning media data. You have the following options to identify the starting chunk: </p> <ul> <li> <p>Choose the latest (or oldest) chunk.</p> </li> <li> <p>Identify a specific chunk. You can identify a specific chunk either by providing a fragment number or time stamp (server or producer). </p> </li> <li> <p>Each chunk's metadata includes a continuation token as a Matroska (MKV) tag (<code>AWS_KINESISVIDEO_CONTINUATION_TOKEN</code>). If your previous <code>GetMedia</code> request terminated, you can use this tag value in your next <code>GetMedia</code> request. The API then starts returning chunks starting where the last API ended.</p> </li> </ul>

##### Instances
``` purescript
Newtype StartSelector _
Generic StartSelector _
Show StartSelector
Decode StartSelector
Encode StartSelector
```

#### `newStartSelector`

``` purescript
newStartSelector :: StartSelectorType -> StartSelector
```

Constructs StartSelector from required parameters

#### `newStartSelector'`

``` purescript
newStartSelector' :: StartSelectorType -> ({ "StartSelectorType" :: StartSelectorType, "AfterFragmentNumber" :: Maybe (FragmentNumberString), "StartTimestamp" :: Maybe (Timestamp), "ContinuationToken" :: Maybe (ContinuationToken) } -> { "StartSelectorType" :: StartSelectorType, "AfterFragmentNumber" :: Maybe (FragmentNumberString), "StartTimestamp" :: Maybe (Timestamp), "ContinuationToken" :: Maybe (ContinuationToken) }) -> StartSelector
```

Constructs StartSelector's fields from required parameters

#### `StartSelectorType`

``` purescript
newtype StartSelectorType
  = StartSelectorType String
```

##### Instances
``` purescript
Newtype StartSelectorType _
Generic StartSelectorType _
Show StartSelectorType
Decode StartSelectorType
Encode StartSelectorType
```

#### `StreamName`

``` purescript
newtype StreamName
  = StreamName String
```

##### Instances
``` purescript
Newtype StreamName _
Generic StreamName _
Show StreamName
Decode StreamName
Encode StreamName
```


