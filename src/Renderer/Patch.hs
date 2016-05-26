  Hunk(..),
  truncatePatch
import Prologue hiding (snd)
import Data.String
import Info
import Prologue hiding (fst, snd)
import Data.Text (pack, Text)

-- | Render a timed out file as a truncated diff.
truncatePatch :: DiffArguments -> Both SourceBlob -> Text
truncatePatch _ blobs = pack $ header blobs ++ "#timed_out\nTruncating diff: timeout reached.\n"
patch :: Renderer a
patch diff blobs = pack $ case getLast (foldMap (Last . Just) string) of
  where string = header blobs ++ mconcat (showHunk blobs <$> hunks diff blobs)
showHunk blobs hunk = maybeOffsetHeader ++
        maybeOffsetHeader = if lengthA > 0 && lengthB > 0
                            then offsetHeader
                            else mempty
        offsetHeader = "@@ -" ++ offsetA ++ "," ++ show lengthA ++ " +" ++ offsetB ++ "," ++ show lengthB ++ " @@" ++ "\n"
        (lengthA, lengthB) = runBoth . fmap getSum $ hunkLength hunk
        (offsetA, offsetB) = runBoth . fmap (show . getSum) $ offset hunk
getRange (Free (Annotated (Info range _ _) _)) = range
getRange (Pure patch) = let Info range _ _ :< _ = getSplitTerm patch in range
header :: Both SourceBlob -> String
header blobs = intercalate "\n" [filepathHeader, fileModeHeader, beforeFilepath, afterFilepath] ++ "\n"
            "old mode " ++ modeToDigits mode1,
            "new mode " ++ modeToDigits mode2,
            blobOidHeader
-- | A hunk representing no changes.
emptyHunk :: Hunk (SplitDiff a Info)
emptyHunk = Hunk { offset = mempty, changes = [], trailingContext = [] }

hunks :: Diff a Info -> Both SourceBlob -> [Hunk (SplitDiff a Info)]
hunks _ blobs | sources <- source <$> blobs
              , sourcesEqual <- runBothWith (==) sources
              , sourcesNull <- runBothWith (&&) (null <$> sources)
              , sourcesEqual || sourcesNull
  = [emptyHunk]
hunks diff blobs = hunksInRows (Both (1, 1)) $ fmap (fmap Prologue.fst) <$> splitDiffByLines (source <$> blobs) diff