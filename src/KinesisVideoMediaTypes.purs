
module AWS.KinesisVideoMedia.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.</p>
newtype ClientLimitExceededException = ClientLimitExceededException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeClientLimitExceededException :: Newtype ClientLimitExceededException _
derive instance repGenericClientLimitExceededException :: Generic ClientLimitExceededException _
instance showClientLimitExceededException :: Show ClientLimitExceededException where show = genericShow
instance decodeClientLimitExceededException :: Decode ClientLimitExceededException where decode = genericDecode options
instance encodeClientLimitExceededException :: Encode ClientLimitExceededException where encode = genericEncode options

-- | Constructs ClientLimitExceededException from required parameters
newClientLimitExceededException :: ClientLimitExceededException
newClientLimitExceededException  = ClientLimitExceededException { "Message": Nothing }

-- | Constructs ClientLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClientLimitExceededException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ClientLimitExceededException
newClientLimitExceededException'  customize = (ClientLimitExceededException <<< customize) { "Message": Nothing }



-- | <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client connections.</p>
newtype ConnectionLimitExceededException = ConnectionLimitExceededException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeConnectionLimitExceededException :: Newtype ConnectionLimitExceededException _
derive instance repGenericConnectionLimitExceededException :: Generic ConnectionLimitExceededException _
instance showConnectionLimitExceededException :: Show ConnectionLimitExceededException where show = genericShow
instance decodeConnectionLimitExceededException :: Decode ConnectionLimitExceededException where decode = genericDecode options
instance encodeConnectionLimitExceededException :: Encode ConnectionLimitExceededException where encode = genericEncode options

-- | Constructs ConnectionLimitExceededException from required parameters
newConnectionLimitExceededException :: ConnectionLimitExceededException
newConnectionLimitExceededException  = ConnectionLimitExceededException { "Message": Nothing }

-- | Constructs ConnectionLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConnectionLimitExceededException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ConnectionLimitExceededException
newConnectionLimitExceededException'  customize = (ConnectionLimitExceededException <<< customize) { "Message": Nothing }



newtype ContentType = ContentType String
derive instance newtypeContentType :: Newtype ContentType _
derive instance repGenericContentType :: Generic ContentType _
instance showContentType :: Show ContentType where show = genericShow
instance decodeContentType :: Decode ContentType where decode = genericDecode options
instance encodeContentType :: Encode ContentType where encode = genericEncode options



newtype ContinuationToken = ContinuationToken String
derive instance newtypeContinuationToken :: Newtype ContinuationToken _
derive instance repGenericContinuationToken :: Generic ContinuationToken _
instance showContinuationToken :: Show ContinuationToken where show = genericShow
instance decodeContinuationToken :: Decode ContinuationToken where decode = genericDecode options
instance encodeContinuationToken :: Encode ContinuationToken where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype FragmentNumberString = FragmentNumberString String
derive instance newtypeFragmentNumberString :: Newtype FragmentNumberString _
derive instance repGenericFragmentNumberString :: Generic FragmentNumberString _
instance showFragmentNumberString :: Show FragmentNumberString where show = genericShow
instance decodeFragmentNumberString :: Decode FragmentNumberString where decode = genericDecode options
instance encodeFragmentNumberString :: Encode FragmentNumberString where encode = genericEncode options



newtype GetMediaInput = GetMediaInput 
  { "StreamName" :: Maybe (StreamName)
  , "StreamARN" :: Maybe (ResourceARN)
  , "StartSelector" :: (StartSelector)
  }
derive instance newtypeGetMediaInput :: Newtype GetMediaInput _
derive instance repGenericGetMediaInput :: Generic GetMediaInput _
instance showGetMediaInput :: Show GetMediaInput where show = genericShow
instance decodeGetMediaInput :: Decode GetMediaInput where decode = genericDecode options
instance encodeGetMediaInput :: Encode GetMediaInput where encode = genericEncode options

-- | Constructs GetMediaInput from required parameters
newGetMediaInput :: StartSelector -> GetMediaInput
newGetMediaInput _StartSelector = GetMediaInput { "StartSelector": _StartSelector, "StreamARN": Nothing, "StreamName": Nothing }

-- | Constructs GetMediaInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMediaInput' :: StartSelector -> ( { "StreamName" :: Maybe (StreamName) , "StreamARN" :: Maybe (ResourceARN) , "StartSelector" :: (StartSelector) } -> {"StreamName" :: Maybe (StreamName) , "StreamARN" :: Maybe (ResourceARN) , "StartSelector" :: (StartSelector) } ) -> GetMediaInput
newGetMediaInput' _StartSelector customize = (GetMediaInput <<< customize) { "StartSelector": _StartSelector, "StreamARN": Nothing, "StreamName": Nothing }



newtype GetMediaOutput = GetMediaOutput 
  { "ContentType" :: Maybe (ContentType)
  , "Payload" :: Maybe (Payload)
  }
derive instance newtypeGetMediaOutput :: Newtype GetMediaOutput _
derive instance repGenericGetMediaOutput :: Generic GetMediaOutput _
instance showGetMediaOutput :: Show GetMediaOutput where show = genericShow
instance decodeGetMediaOutput :: Decode GetMediaOutput where decode = genericDecode options
instance encodeGetMediaOutput :: Encode GetMediaOutput where encode = genericEncode options

-- | Constructs GetMediaOutput from required parameters
newGetMediaOutput :: GetMediaOutput
newGetMediaOutput  = GetMediaOutput { "ContentType": Nothing, "Payload": Nothing }

-- | Constructs GetMediaOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMediaOutput' :: ( { "ContentType" :: Maybe (ContentType) , "Payload" :: Maybe (Payload) } -> {"ContentType" :: Maybe (ContentType) , "Payload" :: Maybe (Payload) } ) -> GetMediaOutput
newGetMediaOutput'  customize = (GetMediaOutput <<< customize) { "ContentType": Nothing, "Payload": Nothing }



-- | <p>The value for this input parameter is invalid.</p>
newtype InvalidArgumentException = InvalidArgumentException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidArgumentException :: Newtype InvalidArgumentException _
derive instance repGenericInvalidArgumentException :: Generic InvalidArgumentException _
instance showInvalidArgumentException :: Show InvalidArgumentException where show = genericShow
instance decodeInvalidArgumentException :: Decode InvalidArgumentException where decode = genericDecode options
instance encodeInvalidArgumentException :: Encode InvalidArgumentException where encode = genericEncode options

-- | Constructs InvalidArgumentException from required parameters
newInvalidArgumentException :: InvalidArgumentException
newInvalidArgumentException  = InvalidArgumentException { "Message": Nothing }

-- | Constructs InvalidArgumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArgumentException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> InvalidArgumentException
newInvalidArgumentException'  customize = (InvalidArgumentException <<< customize) { "Message": Nothing }



-- | <p> Status Code: 400, Caller used wrong endpoint to write data to a stream. On receiving such an exception, the user must call <code>GetDataEndpoint</code> with <code>AccessMode</code> set to "READ" and use the endpoint Kinesis Video returns in the next <code>GetMedia</code> call. </p>
newtype InvalidEndpointException = InvalidEndpointException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidEndpointException :: Newtype InvalidEndpointException _
derive instance repGenericInvalidEndpointException :: Generic InvalidEndpointException _
instance showInvalidEndpointException :: Show InvalidEndpointException where show = genericShow
instance decodeInvalidEndpointException :: Decode InvalidEndpointException where decode = genericDecode options
instance encodeInvalidEndpointException :: Encode InvalidEndpointException where encode = genericEncode options

-- | Constructs InvalidEndpointException from required parameters
newInvalidEndpointException :: InvalidEndpointException
newInvalidEndpointException  = InvalidEndpointException { "Message": Nothing }

-- | Constructs InvalidEndpointException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidEndpointException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> InvalidEndpointException
newInvalidEndpointException'  customize = (InvalidEndpointException <<< customize) { "Message": Nothing }



-- | <p>Status Code: 403, The caller is not authorized to perform an operation on the given stream, or the token has expired.</p>
newtype NotAuthorizedException = NotAuthorizedException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeNotAuthorizedException :: Newtype NotAuthorizedException _
derive instance repGenericNotAuthorizedException :: Generic NotAuthorizedException _
instance showNotAuthorizedException :: Show NotAuthorizedException where show = genericShow
instance decodeNotAuthorizedException :: Decode NotAuthorizedException where decode = genericDecode options
instance encodeNotAuthorizedException :: Encode NotAuthorizedException where encode = genericEncode options

-- | Constructs NotAuthorizedException from required parameters
newNotAuthorizedException :: NotAuthorizedException
newNotAuthorizedException  = NotAuthorizedException { "Message": Nothing }

-- | Constructs NotAuthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotAuthorizedException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> NotAuthorizedException
newNotAuthorizedException'  customize = (NotAuthorizedException <<< customize) { "Message": Nothing }



newtype Payload = Payload String
derive instance newtypePayload :: Newtype Payload _
derive instance repGenericPayload :: Generic Payload _
instance showPayload :: Show Payload where show = genericShow
instance decodePayload :: Decode Payload where decode = genericDecode options
instance encodePayload :: Encode Payload where encode = genericEncode options



newtype ResourceARN = ResourceARN String
derive instance newtypeResourceARN :: Newtype ResourceARN _
derive instance repGenericResourceARN :: Generic ResourceARN _
instance showResourceARN :: Show ResourceARN where show = genericShow
instance decodeResourceARN :: Decode ResourceARN where decode = genericDecode options
instance encodeResourceARN :: Encode ResourceARN where encode = genericEncode options



-- | <p>Status Code: 404, The stream with the given name does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "Message": Nothing }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "Message": Nothing }



-- | <p>Identifies the chunk on the Kinesis video stream where you want the <code>GetMedia</code> API to start returning media data. You have the following options to identify the starting chunk: </p> <ul> <li> <p>Choose the latest (or oldest) chunk.</p> </li> <li> <p>Identify a specific chunk. You can identify a specific chunk either by providing a fragment number or time stamp (server or producer). </p> </li> <li> <p>Each chunk's metadata includes a continuation token as a Matroska (MKV) tag (<code>AWS_KINESISVIDEO_CONTINUATION_TOKEN</code>). If your previous <code>GetMedia</code> request terminated, you can use this tag value in your next <code>GetMedia</code> request. The API then starts returning chunks starting where the last API ended.</p> </li> </ul>
newtype StartSelector = StartSelector 
  { "StartSelectorType" :: (StartSelectorType)
  , "AfterFragmentNumber" :: Maybe (FragmentNumberString)
  , "StartTimestamp" :: Maybe (Types.Timestamp)
  , "ContinuationToken" :: Maybe (ContinuationToken)
  }
derive instance newtypeStartSelector :: Newtype StartSelector _
derive instance repGenericStartSelector :: Generic StartSelector _
instance showStartSelector :: Show StartSelector where show = genericShow
instance decodeStartSelector :: Decode StartSelector where decode = genericDecode options
instance encodeStartSelector :: Encode StartSelector where encode = genericEncode options

-- | Constructs StartSelector from required parameters
newStartSelector :: StartSelectorType -> StartSelector
newStartSelector _StartSelectorType = StartSelector { "StartSelectorType": _StartSelectorType, "AfterFragmentNumber": Nothing, "ContinuationToken": Nothing, "StartTimestamp": Nothing }

-- | Constructs StartSelector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartSelector' :: StartSelectorType -> ( { "StartSelectorType" :: (StartSelectorType) , "AfterFragmentNumber" :: Maybe (FragmentNumberString) , "StartTimestamp" :: Maybe (Types.Timestamp) , "ContinuationToken" :: Maybe (ContinuationToken) } -> {"StartSelectorType" :: (StartSelectorType) , "AfterFragmentNumber" :: Maybe (FragmentNumberString) , "StartTimestamp" :: Maybe (Types.Timestamp) , "ContinuationToken" :: Maybe (ContinuationToken) } ) -> StartSelector
newStartSelector' _StartSelectorType customize = (StartSelector <<< customize) { "StartSelectorType": _StartSelectorType, "AfterFragmentNumber": Nothing, "ContinuationToken": Nothing, "StartTimestamp": Nothing }



newtype StartSelectorType = StartSelectorType String
derive instance newtypeStartSelectorType :: Newtype StartSelectorType _
derive instance repGenericStartSelectorType :: Generic StartSelectorType _
instance showStartSelectorType :: Show StartSelectorType where show = genericShow
instance decodeStartSelectorType :: Decode StartSelectorType where decode = genericDecode options
instance encodeStartSelectorType :: Encode StartSelectorType where encode = genericEncode options



newtype StreamName = StreamName String
derive instance newtypeStreamName :: Newtype StreamName _
derive instance repGenericStreamName :: Generic StreamName _
instance showStreamName :: Show StreamName where show = genericShow
instance decodeStreamName :: Decode StreamName where decode = genericDecode options
instance encodeStreamName :: Encode StreamName where encode = genericEncode options

