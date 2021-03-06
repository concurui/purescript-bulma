-- | Bulma [`Button`](https://bulma.io/documentation/elements/button/) styles

module Bulma.Elements.Button
  ( button
  , buttons
  , Color(..)
  , isColor
  , Style(..)
  , isStyle
  , State(..)
  , isState
  ) where

import Prelude

import Bulma.Common (class ClassHelper, ClassName(..), ClassPart(..), isClass, toClassPart)
import Bulma.Common (Color) as C

-- | `.button` class
button :: ClassName
button = ClassName "button"

-- | `.buttons` class
buttons :: ClassName
buttons = ClassName "buttons"

-- | [Colors](https://bulma.io/documentation/elements/button/#colors) of a button
data Color
  = CommonColor C.Color
  | White
  | Light
  | Dark
  | Black
  | Text

instance chColor :: ClassHelper Color where
  toClassPart (CommonColor color) = toClassPart color
  toClassPart White = ClassPart "white"
  toClassPart Light = ClassPart "light"
  toClassPart Dark = ClassPart "dark"
  toClassPart Black = ClassPart "black"
  toClassPart Text = ClassPart "text"

-- | Sets a `Color` of a button
isColor :: Color -> ClassName
isColor = isClass <<< toClassPart

-- | [Styles](https://bulma.io/documentation/elements/button/#styles) of a button
data Style
  = Outlined
  | Inverted

instance chStyle :: ClassHelper Style where
  toClassPart Outlined = ClassPart "outlined"
  toClassPart Inverted = ClassPart "inverted"

-- | Sets a `Style` of a button
isStyle :: Style -> ClassName
isStyle = isClass <<< toClassPart

-- | [States](https://bulma.io/documentation/elements/button/#states) of a button
data State
  = Hover
  | Focus
  | Active
  | Loading

instance chState :: ClassHelper State where
  toClassPart Hover = ClassPart "hovered"
  toClassPart Focus = ClassPart "focused"
  toClassPart Active = ClassPart "active"
  toClassPart Loading = ClassPart "loading"

-- | Sets a `State` of a button
isState :: State -> ClassName
isState = isClass <<< toClassPart
