{-# OPTIONS_GHC -Wno-simplifiable-class-constraints #-}
module Draw (drawCanvas, canvasWidth, canvasHeight) where

import qualified GI.Gtk as Gtk
import GI.Cairo.Render hiding (x, y, width, height)
import Draw.Shape
import Draw.Color

canvasWidth :: Int
canvasWidth = 256

canvasHeight :: Int
canvasHeight = 256

drawCanvas :: Gtk.IsWidget widget => widget -> Double -> Double -> Render ()
drawCanvas _canvas width height = do
  save

  color $ Hex 0x4c566a
  rect 0 0 width height

  color $ Hex 0x2e3440
  rect 10 10 (width - 20) (height - 20)

  restore
