-- Code generated by protoc-gen-haskell 0.1.0, DO NOT EDIT.
{-# LANGUAGE DerivingVia, DeriveAnyClass, DuplicateRecordFields #-}
{-# OPTIONS_GHC -Wno-unused-imports -Wno-missing-export-lists #-}
module Semantic.Api.V1.CodeAnalysisPB where

import           Control.DeepSeq
import           Control.Monad (msum)
import qualified Data.Aeson as A
import qualified Data.Aeson.Encoding as E
import           Data.ByteString (ByteString)
import           Data.Int
import           Data.Text (Text)
import qualified Data.Text as T
import           Data.Vector (Vector)
import           Data.Word
import           GHC.Generics
import           Proto3.Suite (decodeMessageField, encodeMessageField, nestedvec, packedvec)
import qualified Proto3.Suite as Proto3
import           Proto3.Suite.JSONPB as JSONPB
import           Proto3.Wire (at, oneof)

data PingRequest = PingRequest
  { service :: Text
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB PingRequest where
  parseJSONPB = A.withObject "PingRequest" $ \obj -> PingRequest
    <$> obj .: "service"

instance ToJSONPB PingRequest where
  toJSONPB PingRequest{..} = object
    [
      "service" .= service
    ]
  toEncodingPB PingRequest{..} = pairs
    [
      "service" .= service
    ]

instance FromJSON PingRequest where
  parseJSON = parseJSONPB

instance ToJSON PingRequest where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message PingRequest where
  encodeMessage _ PingRequest{..} = mconcat
    [
      encodeMessageField 1 service
    ]
  decodeMessage _ = PingRequest
    <$> at decodeMessageField 1
  dotProto = undefined

data PingResponse = PingResponse
  { status :: Text
  , hostname :: Text
  , timestamp :: Text
  , sha :: Text
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB PingResponse where
  parseJSONPB = A.withObject "PingResponse" $ \obj -> PingResponse
    <$> obj .: "status"
    <*> obj .: "hostname"
    <*> obj .: "timestamp"
    <*> obj .: "sha"

instance ToJSONPB PingResponse where
  toJSONPB PingResponse{..} = object
    [
      "status" .= status
    , "hostname" .= hostname
    , "timestamp" .= timestamp
    , "sha" .= sha
    ]
  toEncodingPB PingResponse{..} = pairs
    [
      "status" .= status
    , "hostname" .= hostname
    , "timestamp" .= timestamp
    , "sha" .= sha
    ]

instance FromJSON PingResponse where
  parseJSON = parseJSONPB

instance ToJSON PingResponse where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message PingResponse where
  encodeMessage _ PingResponse{..} = mconcat
    [
      encodeMessageField 1 status
    , encodeMessageField 2 hostname
    , encodeMessageField 3 timestamp
    , encodeMessageField 4 sha
    ]
  decodeMessage _ = PingResponse
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> at decodeMessageField 3
    <*> at decodeMessageField 4
  dotProto = undefined

data ParseTreeRequest = ParseTreeRequest
  { blobs :: Vector Blob
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB ParseTreeRequest where
  parseJSONPB = A.withObject "ParseTreeRequest" $ \obj -> ParseTreeRequest
    <$> obj .: "blobs"

instance ToJSONPB ParseTreeRequest where
  toJSONPB ParseTreeRequest{..} = object
    [
      "blobs" .= blobs
    ]
  toEncodingPB ParseTreeRequest{..} = pairs
    [
      "blobs" .= blobs
    ]

instance FromJSON ParseTreeRequest where
  parseJSON = parseJSONPB

instance ToJSON ParseTreeRequest where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message ParseTreeRequest where
  encodeMessage _ ParseTreeRequest{..} = mconcat
    [
      encodeMessageField 1 (Proto3.NestedVec blobs)
    ]
  decodeMessage _ = ParseTreeRequest
    <$> (nestedvec <$> at decodeMessageField 1)
  dotProto = undefined

data ParseTreeSymbolResponse = ParseTreeSymbolResponse
  { files :: Vector File
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB ParseTreeSymbolResponse where
  parseJSONPB = A.withObject "ParseTreeSymbolResponse" $ \obj -> ParseTreeSymbolResponse
    <$> obj .: "files"

instance ToJSONPB ParseTreeSymbolResponse where
  toJSONPB ParseTreeSymbolResponse{..} = object
    [
      "files" .= files
    ]
  toEncodingPB ParseTreeSymbolResponse{..} = pairs
    [
      "files" .= files
    ]

instance FromJSON ParseTreeSymbolResponse where
  parseJSON = parseJSONPB

instance ToJSON ParseTreeSymbolResponse where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message ParseTreeSymbolResponse where
  encodeMessage _ ParseTreeSymbolResponse{..} = mconcat
    [
      encodeMessageField 1 (Proto3.NestedVec files)
    ]
  decodeMessage _ = ParseTreeSymbolResponse
    <$> (nestedvec <$> at decodeMessageField 1)
  dotProto = undefined

data ParseTreeGraphResponse = ParseTreeGraphResponse
  { files :: Vector ParseTreeFileGraph
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB ParseTreeGraphResponse where
  parseJSONPB = A.withObject "ParseTreeGraphResponse" $ \obj -> ParseTreeGraphResponse
    <$> obj .: "files"

instance ToJSONPB ParseTreeGraphResponse where
  toJSONPB ParseTreeGraphResponse{..} = object
    [
      "files" .= files
    ]
  toEncodingPB ParseTreeGraphResponse{..} = pairs
    [
      "files" .= files
    ]

instance FromJSON ParseTreeGraphResponse where
  parseJSON = parseJSONPB

instance ToJSON ParseTreeGraphResponse where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message ParseTreeGraphResponse where
  encodeMessage _ ParseTreeGraphResponse{..} = mconcat
    [
      encodeMessageField 1 (Proto3.NestedVec files)
    ]
  decodeMessage _ = ParseTreeGraphResponse
    <$> (nestedvec <$> at decodeMessageField 1)
  dotProto = undefined

data ParseTreeFileGraph = ParseTreeFileGraph
  { path :: Text
  , language :: Text
  , vertices :: Vector TermVertex
  , edges :: Vector TermEdge
  , errors :: Vector ParseError
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB ParseTreeFileGraph where
  parseJSONPB = A.withObject "ParseTreeFileGraph" $ \obj -> ParseTreeFileGraph
    <$> obj .: "path"
    <*> obj .: "language"
    <*> obj .: "vertices"
    <*> obj .: "edges"
    <*> obj .: "errors"

instance ToJSONPB ParseTreeFileGraph where
  toJSONPB ParseTreeFileGraph{..} = object
    [
      "path" .= path
    , "language" .= language
    , "vertices" .= vertices
    , "edges" .= edges
    , "errors" .= errors
    ]
  toEncodingPB ParseTreeFileGraph{..} = pairs
    [
      "path" .= path
    , "language" .= language
    , "vertices" .= vertices
    , "edges" .= edges
    , "errors" .= errors
    ]

instance FromJSON ParseTreeFileGraph where
  parseJSON = parseJSONPB

instance ToJSON ParseTreeFileGraph where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message ParseTreeFileGraph where
  encodeMessage _ ParseTreeFileGraph{..} = mconcat
    [
      encodeMessageField 1 path
    , encodeMessageField 2 language
    , encodeMessageField 3 (Proto3.NestedVec vertices)
    , encodeMessageField 4 (Proto3.NestedVec edges)
    , encodeMessageField 5 (Proto3.NestedVec errors)
    ]
  decodeMessage _ = ParseTreeFileGraph
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> (nestedvec <$> at decodeMessageField 3)
    <*> (nestedvec <$> at decodeMessageField 4)
    <*> (nestedvec <$> at decodeMessageField 5)
  dotProto = undefined

data TermEdge = TermEdge
  { source :: Int32
  , target :: Int32
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB TermEdge where
  parseJSONPB = A.withObject "TermEdge" $ \obj -> TermEdge
    <$> obj .: "source"
    <*> obj .: "target"

instance ToJSONPB TermEdge where
  toJSONPB TermEdge{..} = object
    [
      "source" .= source
    , "target" .= target
    ]
  toEncodingPB TermEdge{..} = pairs
    [
      "source" .= source
    , "target" .= target
    ]

instance FromJSON TermEdge where
  parseJSON = parseJSONPB

instance ToJSON TermEdge where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message TermEdge where
  encodeMessage _ TermEdge{..} = mconcat
    [
      encodeMessageField 1 source
    , encodeMessageField 2 target
    ]
  decodeMessage _ = TermEdge
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
  dotProto = undefined

data TermVertex = TermVertex
  { vertexId :: Int32
  , term :: Text
  , span :: Maybe Span
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB TermVertex where
  parseJSONPB = A.withObject "TermVertex" $ \obj -> TermVertex
    <$> obj .: "vertexId"
    <*> obj .: "term"
    <*> obj .: "span"

instance ToJSONPB TermVertex where
  toJSONPB TermVertex{..} = object
    [
      "vertexId" .= vertexId
    , "term" .= term
    , "span" .= span
    ]
  toEncodingPB TermVertex{..} = pairs
    [
      "vertexId" .= vertexId
    , "term" .= term
    , "span" .= span
    ]

instance FromJSON TermVertex where
  parseJSON = parseJSONPB

instance ToJSON TermVertex where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message TermVertex where
  encodeMessage _ TermVertex{..} = mconcat
    [
      encodeMessageField 1 vertexId
    , encodeMessageField 2 term
    , encodeMessageField 3 (Proto3.Nested span)
    ]
  decodeMessage _ = TermVertex
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> at decodeMessageField 3
  dotProto = undefined

data ParseError = ParseError
  { error :: Text
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB ParseError where
  parseJSONPB = A.withObject "ParseError" $ \obj -> ParseError
    <$> obj .: "error"

instance ToJSONPB ParseError where
  toJSONPB ParseError{..} = object
    [
      "error" .= error
    ]
  toEncodingPB ParseError{..} = pairs
    [
      "error" .= error
    ]

instance FromJSON ParseError where
  parseJSON = parseJSONPB

instance ToJSON ParseError where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message ParseError where
  encodeMessage _ ParseError{..} = mconcat
    [
      encodeMessageField 1 error
    ]
  decodeMessage _ = ParseError
    <$> at decodeMessageField 1
  dotProto = undefined

data DiffTreeRequest = DiffTreeRequest
  { blobs :: Vector BlobPair
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB DiffTreeRequest where
  parseJSONPB = A.withObject "DiffTreeRequest" $ \obj -> DiffTreeRequest
    <$> obj .: "blobs"

instance ToJSONPB DiffTreeRequest where
  toJSONPB DiffTreeRequest{..} = object
    [
      "blobs" .= blobs
    ]
  toEncodingPB DiffTreeRequest{..} = pairs
    [
      "blobs" .= blobs
    ]

instance FromJSON DiffTreeRequest where
  parseJSON = parseJSONPB

instance ToJSON DiffTreeRequest where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message DiffTreeRequest where
  encodeMessage _ DiffTreeRequest{..} = mconcat
    [
      encodeMessageField 1 (Proto3.NestedVec blobs)
    ]
  decodeMessage _ = DiffTreeRequest
    <$> (nestedvec <$> at decodeMessageField 1)
  dotProto = undefined

data DiffTreeTOCResponse = DiffTreeTOCResponse
  { files :: Vector TOCSummaryFile
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB DiffTreeTOCResponse where
  parseJSONPB = A.withObject "DiffTreeTOCResponse" $ \obj -> DiffTreeTOCResponse
    <$> obj .: "files"

instance ToJSONPB DiffTreeTOCResponse where
  toJSONPB DiffTreeTOCResponse{..} = object
    [
      "files" .= files
    ]
  toEncodingPB DiffTreeTOCResponse{..} = pairs
    [
      "files" .= files
    ]

instance FromJSON DiffTreeTOCResponse where
  parseJSON = parseJSONPB

instance ToJSON DiffTreeTOCResponse where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message DiffTreeTOCResponse where
  encodeMessage _ DiffTreeTOCResponse{..} = mconcat
    [
      encodeMessageField 1 (Proto3.NestedVec files)
    ]
  decodeMessage _ = DiffTreeTOCResponse
    <$> (nestedvec <$> at decodeMessageField 1)
  dotProto = undefined

data TOCSummaryFile = TOCSummaryFile
  { path :: Text
  , language :: Text
  , changes :: Vector TOCSummaryChange
  , errors :: Vector TOCSummaryError
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB TOCSummaryFile where
  parseJSONPB = A.withObject "TOCSummaryFile" $ \obj -> TOCSummaryFile
    <$> obj .: "path"
    <*> obj .: "language"
    <*> obj .: "changes"
    <*> obj .: "errors"

instance ToJSONPB TOCSummaryFile where
  toJSONPB TOCSummaryFile{..} = object
    [
      "path" .= path
    , "language" .= language
    , "changes" .= changes
    , "errors" .= errors
    ]
  toEncodingPB TOCSummaryFile{..} = pairs
    [
      "path" .= path
    , "language" .= language
    , "changes" .= changes
    , "errors" .= errors
    ]

instance FromJSON TOCSummaryFile where
  parseJSON = parseJSONPB

instance ToJSON TOCSummaryFile where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message TOCSummaryFile where
  encodeMessage _ TOCSummaryFile{..} = mconcat
    [
      encodeMessageField 1 path
    , encodeMessageField 2 language
    , encodeMessageField 3 (Proto3.NestedVec changes)
    , encodeMessageField 4 (Proto3.NestedVec errors)
    ]
  decodeMessage _ = TOCSummaryFile
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> (nestedvec <$> at decodeMessageField 3)
    <*> (nestedvec <$> at decodeMessageField 4)
  dotProto = undefined

data TOCSummaryChange = TOCSummaryChange
  { category :: Text
  , term :: Text
  , span :: Maybe Span
  , changeType :: ChangeType
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB TOCSummaryChange where
  parseJSONPB = A.withObject "TOCSummaryChange" $ \obj -> TOCSummaryChange
    <$> obj .: "category"
    <*> obj .: "term"
    <*> obj .: "span"
    <*> obj .: "changeType"

instance ToJSONPB TOCSummaryChange where
  toJSONPB TOCSummaryChange{..} = object
    [
      "category" .= category
    , "term" .= term
    , "span" .= span
    , "changeType" .= changeType
    ]
  toEncodingPB TOCSummaryChange{..} = pairs
    [
      "category" .= category
    , "term" .= term
    , "span" .= span
    , "changeType" .= changeType
    ]

instance FromJSON TOCSummaryChange where
  parseJSON = parseJSONPB

instance ToJSON TOCSummaryChange where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message TOCSummaryChange where
  encodeMessage _ TOCSummaryChange{..} = mconcat
    [
      encodeMessageField 1 category
    , encodeMessageField 2 term
    , encodeMessageField 3 (Proto3.Nested span)
    , encodeMessageField 4 changeType
    ]
  decodeMessage _ = TOCSummaryChange
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> at decodeMessageField 3
    <*> at decodeMessageField 4
  dotProto = undefined

data TOCSummaryError = TOCSummaryError
  { error :: Text
  , span :: Maybe Span
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB TOCSummaryError where
  parseJSONPB = A.withObject "TOCSummaryError" $ \obj -> TOCSummaryError
    <$> obj .: "error"
    <*> obj .: "span"

instance ToJSONPB TOCSummaryError where
  toJSONPB TOCSummaryError{..} = object
    [
      "error" .= error
    , "span" .= span
    ]
  toEncodingPB TOCSummaryError{..} = pairs
    [
      "error" .= error
    , "span" .= span
    ]

instance FromJSON TOCSummaryError where
  parseJSON = parseJSONPB

instance ToJSON TOCSummaryError where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message TOCSummaryError where
  encodeMessage _ TOCSummaryError{..} = mconcat
    [
      encodeMessageField 1 error
    , encodeMessageField 2 (Proto3.Nested span)
    ]
  decodeMessage _ = TOCSummaryError
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
  dotProto = undefined

data DiffTreeGraphResponse = DiffTreeGraphResponse
  { files :: Vector DiffTreeFileGraph
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB DiffTreeGraphResponse where
  parseJSONPB = A.withObject "DiffTreeGraphResponse" $ \obj -> DiffTreeGraphResponse
    <$> obj .: "files"

instance ToJSONPB DiffTreeGraphResponse where
  toJSONPB DiffTreeGraphResponse{..} = object
    [
      "files" .= files
    ]
  toEncodingPB DiffTreeGraphResponse{..} = pairs
    [
      "files" .= files
    ]

instance FromJSON DiffTreeGraphResponse where
  parseJSON = parseJSONPB

instance ToJSON DiffTreeGraphResponse where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message DiffTreeGraphResponse where
  encodeMessage _ DiffTreeGraphResponse{..} = mconcat
    [
      encodeMessageField 1 (Proto3.NestedVec files)
    ]
  decodeMessage _ = DiffTreeGraphResponse
    <$> (nestedvec <$> at decodeMessageField 1)
  dotProto = undefined

data DiffTreeFileGraph = DiffTreeFileGraph
  { path :: Text
  , language :: Text
  , vertices :: Vector DiffTreeVertex
  , edges :: Vector DiffTreeEdge
  , errors :: Vector ParseError
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB DiffTreeFileGraph where
  parseJSONPB = A.withObject "DiffTreeFileGraph" $ \obj -> DiffTreeFileGraph
    <$> obj .: "path"
    <*> obj .: "language"
    <*> obj .: "vertices"
    <*> obj .: "edges"
    <*> obj .: "errors"

instance ToJSONPB DiffTreeFileGraph where
  toJSONPB DiffTreeFileGraph{..} = object
    [
      "path" .= path
    , "language" .= language
    , "vertices" .= vertices
    , "edges" .= edges
    , "errors" .= errors
    ]
  toEncodingPB DiffTreeFileGraph{..} = pairs
    [
      "path" .= path
    , "language" .= language
    , "vertices" .= vertices
    , "edges" .= edges
    , "errors" .= errors
    ]

instance FromJSON DiffTreeFileGraph where
  parseJSON = parseJSONPB

instance ToJSON DiffTreeFileGraph where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message DiffTreeFileGraph where
  encodeMessage _ DiffTreeFileGraph{..} = mconcat
    [
      encodeMessageField 1 path
    , encodeMessageField 2 language
    , encodeMessageField 3 (Proto3.NestedVec vertices)
    , encodeMessageField 4 (Proto3.NestedVec edges)
    , encodeMessageField 5 (Proto3.NestedVec errors)
    ]
  decodeMessage _ = DiffTreeFileGraph
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> (nestedvec <$> at decodeMessageField 3)
    <*> (nestedvec <$> at decodeMessageField 4)
    <*> (nestedvec <$> at decodeMessageField 5)
  dotProto = undefined

data DiffTreeEdge = DiffTreeEdge
  { source :: Int32
  , target :: Int32
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB DiffTreeEdge where
  parseJSONPB = A.withObject "DiffTreeEdge" $ \obj -> DiffTreeEdge
    <$> obj .: "source"
    <*> obj .: "target"

instance ToJSONPB DiffTreeEdge where
  toJSONPB DiffTreeEdge{..} = object
    [
      "source" .= source
    , "target" .= target
    ]
  toEncodingPB DiffTreeEdge{..} = pairs
    [
      "source" .= source
    , "target" .= target
    ]

instance FromJSON DiffTreeEdge where
  parseJSON = parseJSONPB

instance ToJSON DiffTreeEdge where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message DiffTreeEdge where
  encodeMessage _ DiffTreeEdge{..} = mconcat
    [
      encodeMessageField 1 source
    , encodeMessageField 2 target
    ]
  decodeMessage _ = DiffTreeEdge
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
  dotProto = undefined

data DiffTreeVertexDiffTerm
  = Deleted (Maybe DeletedTerm)
  | Inserted (Maybe InsertedTerm)
  | Replaced (Maybe ReplacedTerm)
  | Merged (Maybe MergedTerm)
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Proto3.Message, Proto3.Named, NFData)

instance FromJSONPB DiffTreeVertexDiffTerm where
  parseJSONPB = A.withObject "DiffTreeVertexDiffTerm" $ \obj -> msum
    [
      Deleted <$> parseField obj "deleted"
    , Inserted <$> parseField obj "inserted"
    , Replaced <$> parseField obj "replaced"
    , Merged <$> parseField obj "merged"
    ]

instance ToJSONPB DiffTreeVertexDiffTerm where
  toJSONPB (Deleted x) = object [ "deleted" .= x ]
  toJSONPB (Inserted x) = object [ "inserted" .= x ]
  toJSONPB (Replaced x) = object [ "replaced" .= x ]
  toJSONPB (Merged x) = object [ "merged" .= x ]
  toEncodingPB (Deleted x) = pairs [ "deleted" .= x ]
  toEncodingPB (Inserted x) = pairs [ "inserted" .= x ]
  toEncodingPB (Replaced x) = pairs [ "replaced" .= x ]
  toEncodingPB (Merged x) = pairs [ "merged" .= x ]

instance FromJSON DiffTreeVertexDiffTerm where
  parseJSON = parseJSONPB

instance ToJSON DiffTreeVertexDiffTerm where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

data DiffTreeVertex = DiffTreeVertex
  { diffVertexId :: Int32
  , diffTerm :: Maybe DiffTreeVertexDiffTerm
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB DiffTreeVertex where
  parseJSONPB = A.withObject "DiffTreeVertex" $ \obj -> DiffTreeVertex
    <$> obj .: "diffVertexId"
    <*> obj .: "diffTerm"

instance ToJSONPB DiffTreeVertex where
  toJSONPB DiffTreeVertex{..} = object
    [
      "diffVertexId" .= diffVertexId
    , "diffTerm" .= diffTerm
    ]
  toEncodingPB DiffTreeVertex{..} = pairs
    [
      "diffVertexId" .= diffVertexId
    , "diffTerm" .= diffTerm
    ]

instance FromJSON DiffTreeVertex where
  parseJSON = parseJSONPB

instance ToJSON DiffTreeVertex where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message DiffTreeVertex where
  encodeMessage _ DiffTreeVertex{..} = mconcat
    [
      encodeMessageField 1 diffVertexId
    , case diffTerm of
         Nothing -> mempty
         Just (Deleted deleted) -> encodeMessageField 2 deleted
         Just (Inserted inserted) -> encodeMessageField 3 inserted
         Just (Replaced replaced) -> encodeMessageField 4 replaced
         Just (Merged merged) -> encodeMessageField 5 merged
    ]
  decodeMessage _ = DiffTreeVertex
    <$> at decodeMessageField 1
    <*> oneof
         Nothing
         [
           (2, Just . Deleted <$> decodeMessageField)
         , (3, Just . Inserted <$> decodeMessageField)
         , (4, Just . Replaced <$> decodeMessageField)
         , (5, Just . Merged <$> decodeMessageField)
         ]
  dotProto = undefined

data DeletedTerm = DeletedTerm
  { term :: Text
  , span :: Maybe Span
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB DeletedTerm where
  parseJSONPB = A.withObject "DeletedTerm" $ \obj -> DeletedTerm
    <$> obj .: "term"
    <*> obj .: "span"

instance ToJSONPB DeletedTerm where
  toJSONPB DeletedTerm{..} = object
    [
      "term" .= term
    , "span" .= span
    ]
  toEncodingPB DeletedTerm{..} = pairs
    [
      "term" .= term
    , "span" .= span
    ]

instance FromJSON DeletedTerm where
  parseJSON = parseJSONPB

instance ToJSON DeletedTerm where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message DeletedTerm where
  encodeMessage _ DeletedTerm{..} = mconcat
    [
      encodeMessageField 1 term
    , encodeMessageField 2 (Proto3.Nested span)
    ]
  decodeMessage _ = DeletedTerm
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
  dotProto = undefined

data InsertedTerm = InsertedTerm
  { term :: Text
  , span :: Maybe Span
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB InsertedTerm where
  parseJSONPB = A.withObject "InsertedTerm" $ \obj -> InsertedTerm
    <$> obj .: "term"
    <*> obj .: "span"

instance ToJSONPB InsertedTerm where
  toJSONPB InsertedTerm{..} = object
    [
      "term" .= term
    , "span" .= span
    ]
  toEncodingPB InsertedTerm{..} = pairs
    [
      "term" .= term
    , "span" .= span
    ]

instance FromJSON InsertedTerm where
  parseJSON = parseJSONPB

instance ToJSON InsertedTerm where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message InsertedTerm where
  encodeMessage _ InsertedTerm{..} = mconcat
    [
      encodeMessageField 1 term
    , encodeMessageField 2 (Proto3.Nested span)
    ]
  decodeMessage _ = InsertedTerm
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
  dotProto = undefined

data ReplacedTerm = ReplacedTerm
  { beforeTerm :: Text
  , beforeSpan :: Maybe Span
  , afterTerm :: Text
  , afterSpan :: Maybe Span
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB ReplacedTerm where
  parseJSONPB = A.withObject "ReplacedTerm" $ \obj -> ReplacedTerm
    <$> obj .: "beforeTerm"
    <*> obj .: "beforeSpan"
    <*> obj .: "afterTerm"
    <*> obj .: "afterSpan"

instance ToJSONPB ReplacedTerm where
  toJSONPB ReplacedTerm{..} = object
    [
      "beforeTerm" .= beforeTerm
    , "beforeSpan" .= beforeSpan
    , "afterTerm" .= afterTerm
    , "afterSpan" .= afterSpan
    ]
  toEncodingPB ReplacedTerm{..} = pairs
    [
      "beforeTerm" .= beforeTerm
    , "beforeSpan" .= beforeSpan
    , "afterTerm" .= afterTerm
    , "afterSpan" .= afterSpan
    ]

instance FromJSON ReplacedTerm where
  parseJSON = parseJSONPB

instance ToJSON ReplacedTerm where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message ReplacedTerm where
  encodeMessage _ ReplacedTerm{..} = mconcat
    [
      encodeMessageField 1 beforeTerm
    , encodeMessageField 2 (Proto3.Nested beforeSpan)
    , encodeMessageField 3 afterTerm
    , encodeMessageField 4 (Proto3.Nested afterSpan)
    ]
  decodeMessage _ = ReplacedTerm
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> at decodeMessageField 3
    <*> at decodeMessageField 4
  dotProto = undefined

data MergedTerm = MergedTerm
  { term :: Text
  , beforeSpan :: Maybe Span
  , afterSpan :: Maybe Span
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB MergedTerm where
  parseJSONPB = A.withObject "MergedTerm" $ \obj -> MergedTerm
    <$> obj .: "term"
    <*> obj .: "beforeSpan"
    <*> obj .: "afterSpan"

instance ToJSONPB MergedTerm where
  toJSONPB MergedTerm{..} = object
    [
      "term" .= term
    , "beforeSpan" .= beforeSpan
    , "afterSpan" .= afterSpan
    ]
  toEncodingPB MergedTerm{..} = pairs
    [
      "term" .= term
    , "beforeSpan" .= beforeSpan
    , "afterSpan" .= afterSpan
    ]

instance FromJSON MergedTerm where
  parseJSON = parseJSONPB

instance ToJSON MergedTerm where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message MergedTerm where
  encodeMessage _ MergedTerm{..} = mconcat
    [
      encodeMessageField 1 term
    , encodeMessageField 2 (Proto3.Nested beforeSpan)
    , encodeMessageField 3 (Proto3.Nested afterSpan)
    ]
  decodeMessage _ = MergedTerm
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> at decodeMessageField 3
  dotProto = undefined

data Blob = Blob
  { content :: Text
  , path :: Text
  , language :: Text
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB Blob where
  parseJSONPB = A.withObject "Blob" $ \obj -> Blob
    <$> obj .: "content"
    <*> obj .: "path"
    <*> obj .: "language"

instance ToJSONPB Blob where
  toJSONPB Blob{..} = object
    [
      "content" .= content
    , "path" .= path
    , "language" .= language
    ]
  toEncodingPB Blob{..} = pairs
    [
      "content" .= content
    , "path" .= path
    , "language" .= language
    ]

instance FromJSON Blob where
  parseJSON = parseJSONPB

instance ToJSON Blob where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message Blob where
  encodeMessage _ Blob{..} = mconcat
    [
      encodeMessageField 1 content
    , encodeMessageField 2 path
    , encodeMessageField 3 language
    ]
  decodeMessage _ = Blob
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> at decodeMessageField 3
  dotProto = undefined

data BlobPair = BlobPair
  { before :: Maybe Blob
  , after :: Maybe Blob
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB BlobPair where
  parseJSONPB = A.withObject "BlobPair" $ \obj -> BlobPair
    <$> obj .: "before"
    <*> obj .: "after"

instance ToJSONPB BlobPair where
  toJSONPB BlobPair{..} = object
    [
      "before" .= before
    , "after" .= after
    ]
  toEncodingPB BlobPair{..} = pairs
    [
      "before" .= before
    , "after" .= after
    ]

instance FromJSON BlobPair where
  parseJSON = parseJSONPB

instance ToJSON BlobPair where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message BlobPair where
  encodeMessage _ BlobPair{..} = mconcat
    [
      encodeMessageField 1 (Proto3.Nested before)
    , encodeMessageField 2 (Proto3.Nested after)
    ]
  decodeMessage _ = BlobPair
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
  dotProto = undefined

data File = File
  { path :: Text
  , language :: Text
  , symbols :: Vector Symbol
  , errors :: Vector ParseError
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB File where
  parseJSONPB = A.withObject "File" $ \obj -> File
    <$> obj .: "path"
    <*> obj .: "language"
    <*> obj .: "symbols"
    <*> obj .: "errors"

instance ToJSONPB File where
  toJSONPB File{..} = object
    [
      "path" .= path
    , "language" .= language
    , "symbols" .= symbols
    , "errors" .= errors
    ]
  toEncodingPB File{..} = pairs
    [
      "path" .= path
    , "language" .= language
    , "symbols" .= symbols
    , "errors" .= errors
    ]

instance FromJSON File where
  parseJSON = parseJSONPB

instance ToJSON File where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message File where
  encodeMessage _ File{..} = mconcat
    [
      encodeMessageField 1 path
    , encodeMessageField 2 language
    , encodeMessageField 3 (Proto3.NestedVec symbols)
    , encodeMessageField 4 (Proto3.NestedVec errors)
    ]
  decodeMessage _ = File
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> (nestedvec <$> at decodeMessageField 3)
    <*> (nestedvec <$> at decodeMessageField 4)
  dotProto = undefined

data Symbol = Symbol
  { symbol :: Text
  , kind :: Text
  , line :: Text
  , span :: Maybe Span
  , docs :: Maybe Docstring
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB Symbol where
  parseJSONPB = A.withObject "Symbol" $ \obj -> Symbol
    <$> obj .: "symbol"
    <*> obj .: "kind"
    <*> obj .: "line"
    <*> obj .: "span"
    <*> obj .: "docs"

instance ToJSONPB Symbol where
  toJSONPB Symbol{..} = object
    [
      "symbol" .= symbol
    , "kind" .= kind
    , "line" .= line
    , "span" .= span
    , "docs" .= docs
    ]
  toEncodingPB Symbol{..} = pairs
    [
      "symbol" .= symbol
    , "kind" .= kind
    , "line" .= line
    , "span" .= span
    , "docs" .= docs
    ]

instance FromJSON Symbol where
  parseJSON = parseJSONPB

instance ToJSON Symbol where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message Symbol where
  encodeMessage _ Symbol{..} = mconcat
    [
      encodeMessageField 1 symbol
    , encodeMessageField 2 kind
    , encodeMessageField 3 line
    , encodeMessageField 4 (Proto3.Nested span)
    , encodeMessageField 5 (Proto3.Nested docs)
    ]
  decodeMessage _ = Symbol
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
    <*> at decodeMessageField 3
    <*> at decodeMessageField 4
    <*> at decodeMessageField 5
  dotProto = undefined

data Docstring = Docstring
  { docstring :: Text
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB Docstring where
  parseJSONPB = A.withObject "Docstring" $ \obj -> Docstring
    <$> obj .: "docstring"

instance ToJSONPB Docstring where
  toJSONPB Docstring{..} = object
    [
      "docstring" .= docstring
    ]
  toEncodingPB Docstring{..} = pairs
    [
      "docstring" .= docstring
    ]

instance FromJSON Docstring where
  parseJSON = parseJSONPB

instance ToJSON Docstring where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message Docstring where
  encodeMessage _ Docstring{..} = mconcat
    [
      encodeMessageField 1 docstring
    ]
  decodeMessage _ = Docstring
    <$> at decodeMessageField 1
  dotProto = undefined

data Position = Position
  { line :: Int32
  , column :: Int32
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB Position where
  parseJSONPB = A.withObject "Position" $ \obj -> Position
    <$> obj .: "line"
    <*> obj .: "column"

instance ToJSONPB Position where
  toJSONPB Position{..} = object
    [
      "line" .= line
    , "column" .= column
    ]
  toEncodingPB Position{..} = pairs
    [
      "line" .= line
    , "column" .= column
    ]

instance FromJSON Position where
  parseJSON = parseJSONPB

instance ToJSON Position where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message Position where
  encodeMessage _ Position{..} = mconcat
    [
      encodeMessageField 1 line
    , encodeMessageField 2 column
    ]
  decodeMessage _ = Position
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
  dotProto = undefined

data Span = Span
  { start :: Maybe Position
  , end :: Maybe Position
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Proto3.Named, NFData)

instance FromJSONPB Span where
  parseJSONPB = A.withObject "Span" $ \obj -> Span
    <$> obj .: "start"
    <*> obj .: "end"

instance ToJSONPB Span where
  toJSONPB Span{..} = object
    [
      "start" .= start
    , "end" .= end
    ]
  toEncodingPB Span{..} = pairs
    [
      "start" .= start
    , "end" .= end
    ]

instance FromJSON Span where
  parseJSON = parseJSONPB

instance ToJSON Span where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding

instance Proto3.Message Span where
  encodeMessage _ Span{..} = mconcat
    [
      encodeMessageField 1 (Proto3.Nested start)
    , encodeMessageField 2 (Proto3.Nested end)
    ]
  decodeMessage _ = Span
    <$> at decodeMessageField 1
    <*> at decodeMessageField 2
  dotProto = undefined

data ChangeType
  = None
  | Added
  | Removed
  | Modified
  deriving stock (Eq, Ord, Show, Enum, Bounded, Generic)
  deriving anyclass (Proto3.Named, Proto3.MessageField, NFData)
  deriving Proto3.Primitive via Proto3.PrimitiveEnum ChangeType

instance Proto3.HasDefault ChangeType where def = None

instance FromJSONPB ChangeType where
  parseJSONPB (JSONPB.String "NONE") = pure None
  parseJSONPB (JSONPB.String "ADDED") = pure Added
  parseJSONPB (JSONPB.String "REMOVED") = pure Removed
  parseJSONPB (JSONPB.String "MODIFIED") = pure Modified
  parseJSONPB x = typeMismatch "ChangeType" x

instance ToJSONPB ChangeType where
  toJSONPB x _ = A.String . T.toUpper . T.pack $ show x
  toEncodingPB x _ = E.text . T.toUpper . T.pack  $ show x

instance FromJSON ChangeType where
  parseJSON = parseJSONPB

instance ToJSON ChangeType where
  toJSON = toAesonValue
  toEncoding = toAesonEncoding
