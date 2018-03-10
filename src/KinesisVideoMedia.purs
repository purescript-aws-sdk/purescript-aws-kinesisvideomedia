

-- | <p/>
module AWS.KinesisVideoMedia where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "KinesisVideoMedia" :: String


-- | <p> Use this API to retrieve media content from a Kinesis video stream. In the request, you identify stream name or stream Amazon Resource Name (ARN), and the starting chunk. Kinesis Video Streams then returns a stream of chunks in order by fragment number.</p> <note> <p> You must first call the <code>GetDataEndpoint</code> API to get an endpoint to which you can then send the <code>GetMedia</code> requests. </p> </note> <p>When you put media data (fragments) on a stream, Kinesis Video Streams stores each incoming fragment and related metadata in what is called a "chunk." For more information, see . The <code>GetMedia</code> API returns a stream of these chunks starting from the chunk that you specify in the request. </p> <p>The following limits apply when using the <code>GetMedia</code> API:</p> <ul> <li> <p>A client can call <code>GetMedia</code> up to five times per second per stream. </p> </li> <li> <p>Kinesis Video Streams sends media data at a rate of up to 25 megabytes per second (or 200 megabits per second) during a <code>GetMedia</code> session. </p> </li> </ul>
getMedia :: forall eff. GetMediaInput -> Aff (exception :: EXCEPTION | eff) GetMediaOutput
getMedia = Request.request serviceName "getMedia" 


-- | <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.</p>
newtype ClientLimitExceededException = ClientLimitExceededException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeClientLimitExceededException :: Newtype ClientLimitExceededException _
derive instance repGenericClientLimitExceededException :: Generic ClientLimitExceededException _
instance showClientLimitExceededException :: Show ClientLimitExceededException where
  show = genericShow
instance decodeClientLimitExceededException :: Decode ClientLimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClientLimitExceededException :: Encode ClientLimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ClientLimitExceededException from required parameters
newClientLimitExceededException :: ClientLimitExceededException
newClientLimitExceededException  = ClientLimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ClientLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClientLimitExceededException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ClientLimitExceededException
newClientLimitExceededException'  customize = (ClientLimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client connections.</p>
newtype ConnectionLimitExceededException = ConnectionLimitExceededException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeConnectionLimitExceededException :: Newtype ConnectionLimitExceededException _
derive instance repGenericConnectionLimitExceededException :: Generic ConnectionLimitExceededException _
instance showConnectionLimitExceededException :: Show ConnectionLimitExceededException where
  show = genericShow
instance decodeConnectionLimitExceededException :: Decode ConnectionLimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConnectionLimitExceededException :: Encode ConnectionLimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConnectionLimitExceededException from required parameters
newConnectionLimitExceededException :: ConnectionLimitExceededException
newConnectionLimitExceededException  = ConnectionLimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ConnectionLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConnectionLimitExceededException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ConnectionLimitExceededException
newConnectionLimitExceededException'  customize = (ConnectionLimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ContentType = ContentType String
derive instance newtypeContentType :: Newtype ContentType _
derive instance repGenericContentType :: Generic ContentType _
instance showContentType :: Show ContentType where
  show = genericShow
instance decodeContentType :: Decode ContentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContentType :: Encode ContentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ContinuationToken = ContinuationToken String
derive instance newtypeContinuationToken :: Newtype ContinuationToken _
derive instance repGenericContinuationToken :: Generic ContinuationToken _
instance showContinuationToken :: Show ContinuationToken where
  show = genericShow
instance decodeContinuationToken :: Decode ContinuationToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContinuationToken :: Encode ContinuationToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FragmentNumberString = FragmentNumberString String
derive instance newtypeFragmentNumberString :: Newtype FragmentNumberString _
derive instance repGenericFragmentNumberString :: Generic FragmentNumberString _
instance showFragmentNumberString :: Show FragmentNumberString where
  show = genericShow
instance decodeFragmentNumberString :: Decode FragmentNumberString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFragmentNumberString :: Encode FragmentNumberString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetMediaInput = GetMediaInput 
  { "StreamName" :: NullOrUndefined.NullOrUndefined (StreamName)
  , "StreamARN" :: NullOrUndefined.NullOrUndefined (ResourceARN)
  , "StartSelector" :: (StartSelector)
  }
derive instance newtypeGetMediaInput :: Newtype GetMediaInput _
derive instance repGenericGetMediaInput :: Generic GetMediaInput _
instance showGetMediaInput :: Show GetMediaInput where
  show = genericShow
instance decodeGetMediaInput :: Decode GetMediaInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetMediaInput :: Encode GetMediaInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetMediaInput from required parameters
newGetMediaInput :: StartSelector -> GetMediaInput
newGetMediaInput _StartSelector = GetMediaInput { "StartSelector": _StartSelector, "StreamARN": (NullOrUndefined Nothing), "StreamName": (NullOrUndefined Nothing) }

-- | Constructs GetMediaInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMediaInput' :: StartSelector -> ( { "StreamName" :: NullOrUndefined.NullOrUndefined (StreamName) , "StreamARN" :: NullOrUndefined.NullOrUndefined (ResourceARN) , "StartSelector" :: (StartSelector) } -> {"StreamName" :: NullOrUndefined.NullOrUndefined (StreamName) , "StreamARN" :: NullOrUndefined.NullOrUndefined (ResourceARN) , "StartSelector" :: (StartSelector) } ) -> GetMediaInput
newGetMediaInput' _StartSelector customize = (GetMediaInput <<< customize) { "StartSelector": _StartSelector, "StreamARN": (NullOrUndefined Nothing), "StreamName": (NullOrUndefined Nothing) }



newtype GetMediaOutput = GetMediaOutput 
  { "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType)
  , "Payload" :: NullOrUndefined.NullOrUndefined (Payload)
  }
derive instance newtypeGetMediaOutput :: Newtype GetMediaOutput _
derive instance repGenericGetMediaOutput :: Generic GetMediaOutput _
instance showGetMediaOutput :: Show GetMediaOutput where
  show = genericShow
instance decodeGetMediaOutput :: Decode GetMediaOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetMediaOutput :: Encode GetMediaOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetMediaOutput from required parameters
newGetMediaOutput :: GetMediaOutput
newGetMediaOutput  = GetMediaOutput { "ContentType": (NullOrUndefined Nothing), "Payload": (NullOrUndefined Nothing) }

-- | Constructs GetMediaOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMediaOutput' :: ( { "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "Payload" :: NullOrUndefined.NullOrUndefined (Payload) } -> {"ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "Payload" :: NullOrUndefined.NullOrUndefined (Payload) } ) -> GetMediaOutput
newGetMediaOutput'  customize = (GetMediaOutput <<< customize) { "ContentType": (NullOrUndefined Nothing), "Payload": (NullOrUndefined Nothing) }



-- | <p>The value for this input parameter is invalid.</p>
newtype InvalidArgumentException = InvalidArgumentException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidArgumentException :: Newtype InvalidArgumentException _
derive instance repGenericInvalidArgumentException :: Generic InvalidArgumentException _
instance showInvalidArgumentException :: Show InvalidArgumentException where
  show = genericShow
instance decodeInvalidArgumentException :: Decode InvalidArgumentException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidArgumentException :: Encode InvalidArgumentException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidArgumentException from required parameters
newInvalidArgumentException :: InvalidArgumentException
newInvalidArgumentException  = InvalidArgumentException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidArgumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArgumentException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidArgumentException
newInvalidArgumentException'  customize = (InvalidArgumentException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p> Status Code: 400, Caller used wrong endpoint to write data to a stream. On receiving such an exception, the user must call <code>GetDataEndpoint</code> with <code>AccessMode</code> set to "READ" and use the endpoint Kinesis Video returns in the next <code>GetMedia</code> call. </p>
newtype InvalidEndpointException = InvalidEndpointException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidEndpointException :: Newtype InvalidEndpointException _
derive instance repGenericInvalidEndpointException :: Generic InvalidEndpointException _
instance showInvalidEndpointException :: Show InvalidEndpointException where
  show = genericShow
instance decodeInvalidEndpointException :: Decode InvalidEndpointException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidEndpointException :: Encode InvalidEndpointException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidEndpointException from required parameters
newInvalidEndpointException :: InvalidEndpointException
newInvalidEndpointException  = InvalidEndpointException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidEndpointException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidEndpointException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidEndpointException
newInvalidEndpointException'  customize = (InvalidEndpointException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Status Code: 403, The caller is not authorized to perform an operation on the given stream, or the token has expired.</p>
newtype NotAuthorizedException = NotAuthorizedException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeNotAuthorizedException :: Newtype NotAuthorizedException _
derive instance repGenericNotAuthorizedException :: Generic NotAuthorizedException _
instance showNotAuthorizedException :: Show NotAuthorizedException where
  show = genericShow
instance decodeNotAuthorizedException :: Decode NotAuthorizedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotAuthorizedException :: Encode NotAuthorizedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotAuthorizedException from required parameters
newNotAuthorizedException :: NotAuthorizedException
newNotAuthorizedException  = NotAuthorizedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs NotAuthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotAuthorizedException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> NotAuthorizedException
newNotAuthorizedException'  customize = (NotAuthorizedException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Payload = Payload String
derive instance newtypePayload :: Newtype Payload _
derive instance repGenericPayload :: Generic Payload _
instance showPayload :: Show Payload where
  show = genericShow
instance decodePayload :: Decode Payload where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePayload :: Encode Payload where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceARN = ResourceARN String
derive instance newtypeResourceARN :: Newtype ResourceARN _
derive instance repGenericResourceARN :: Generic ResourceARN _
instance showResourceARN :: Show ResourceARN where
  show = genericShow
instance decodeResourceARN :: Decode ResourceARN where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceARN :: Encode ResourceARN where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Status Code: 404, The stream with the given name does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where
  show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Identifies the chunk on the Kinesis video stream where you want the <code>GetMedia</code> API to start returning media data. You have the following options to identify the starting chunk: </p> <ul> <li> <p>Choose the latest (or oldest) chunk.</p> </li> <li> <p>Identify a specific chunk. You can identify a specific chunk either by providing a fragment number or time stamp (server or producer). </p> </li> <li> <p>Each chunk's metadata includes a continuation token as a Matroska (MKV) tag (<code>AWS_KINESISVIDEO_CONTINUATION_TOKEN</code>). If your previous <code>GetMedia</code> request terminated, you can use this tag value in your next <code>GetMedia</code> request. The API then starts returning chunks starting where the last API ended.</p> </li> </ul>
newtype StartSelector = StartSelector 
  { "StartSelectorType" :: (StartSelectorType)
  , "AfterFragmentNumber" :: NullOrUndefined.NullOrUndefined (FragmentNumberString)
  , "StartTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "ContinuationToken" :: NullOrUndefined.NullOrUndefined (ContinuationToken)
  }
derive instance newtypeStartSelector :: Newtype StartSelector _
derive instance repGenericStartSelector :: Generic StartSelector _
instance showStartSelector :: Show StartSelector where
  show = genericShow
instance decodeStartSelector :: Decode StartSelector where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartSelector :: Encode StartSelector where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartSelector from required parameters
newStartSelector :: StartSelectorType -> StartSelector
newStartSelector _StartSelectorType = StartSelector { "StartSelectorType": _StartSelectorType, "AfterFragmentNumber": (NullOrUndefined Nothing), "ContinuationToken": (NullOrUndefined Nothing), "StartTimestamp": (NullOrUndefined Nothing) }

-- | Constructs StartSelector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartSelector' :: StartSelectorType -> ( { "StartSelectorType" :: (StartSelectorType) , "AfterFragmentNumber" :: NullOrUndefined.NullOrUndefined (FragmentNumberString) , "StartTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "ContinuationToken" :: NullOrUndefined.NullOrUndefined (ContinuationToken) } -> {"StartSelectorType" :: (StartSelectorType) , "AfterFragmentNumber" :: NullOrUndefined.NullOrUndefined (FragmentNumberString) , "StartTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "ContinuationToken" :: NullOrUndefined.NullOrUndefined (ContinuationToken) } ) -> StartSelector
newStartSelector' _StartSelectorType customize = (StartSelector <<< customize) { "StartSelectorType": _StartSelectorType, "AfterFragmentNumber": (NullOrUndefined Nothing), "ContinuationToken": (NullOrUndefined Nothing), "StartTimestamp": (NullOrUndefined Nothing) }



newtype StartSelectorType = StartSelectorType String
derive instance newtypeStartSelectorType :: Newtype StartSelectorType _
derive instance repGenericStartSelectorType :: Generic StartSelectorType _
instance showStartSelectorType :: Show StartSelectorType where
  show = genericShow
instance decodeStartSelectorType :: Decode StartSelectorType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartSelectorType :: Encode StartSelectorType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StreamName = StreamName String
derive instance newtypeStreamName :: Newtype StreamName _
derive instance repGenericStreamName :: Generic StreamName _
instance showStreamName :: Show StreamName where
  show = genericShow
instance decodeStreamName :: Decode StreamName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStreamName :: Encode StreamName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

