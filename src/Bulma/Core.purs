module Bulma.Core where

import Prelude
import Bulma.Types (Clazz)

class ClazzHelper a where
  toString :: a -> String

clazzDelemiter :: String
clazzDelemiter = "-"

clazzNotSupported :: Clazz
clazzNotSupported = "clazz-is-not-supported"

data BreakPoints
  = Mobile
  | Tablet
  | TabletOnly
  | Touch
  | Desktop
  | DesktopOnly
  | Widescreen
  | WidescreenOnly
  | FullHD

instance chBreakPoints :: ClazzHelper BreakPoints where
  toString Mobile = "mobile"
  toString Tablet = "tablet"
  toString TabletOnly = "tablet-only"
  toString Touch = "touch"
  toString Desktop = "desktop"
  toString DesktopOnly = "desktop-only"
  toString Widescreen = "widescreen"
  toString WidescreenOnly = "widescreen-only"
  toString FullHD = "fullhd"

is :: String -> Clazz
is str =
  "is-" <> str

has :: String -> Clazz
has str =
  "has-" <> str