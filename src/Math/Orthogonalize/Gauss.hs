{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE MultiParamTypeClasses, FunctionalDependencies, TypeFamilies #-}
module Math.Orthogonalize.Gauss where
import Prelude hiding (sqrt)

class Fractional a => SimpleAlgebraic a where
  sqrt :: a -> a


class SimpleAlgebraic a => Metric f a where
  dot :: f a -> f a -> a
  normalize :: f a -> a -> f a
  diff :: f a -> f a -> f a
