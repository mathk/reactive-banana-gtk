module Reactive.Banana.Gtk.Container where

import Data.Foldable
import Data.Monoid
import Reactive.Banana
import Reactive.Banana.Frameworks
import Reactive.Banana.Gtk.Internal
import System.IO.Unsafe (unsafeInterleaveIO)
import qualified Graphics.UI.Gtk as Gtk

data ContainerSignals t = ContainerSignals

class IsContainer a where
  containerSignals :: a t -> ContainerSignals t

listenContainerSignals :: Gtk.ContainerClass widget => widget -> Moment t (ContainerSignals t)
listenContainerSignals _ = return ContainerSignals
