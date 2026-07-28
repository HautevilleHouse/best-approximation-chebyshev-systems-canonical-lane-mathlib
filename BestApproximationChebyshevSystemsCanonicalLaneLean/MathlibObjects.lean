import BestApproximationChebyshevSystemsCanonicalLaneLean.ChebyshevSystems
import Mathlib.Analysis.Chebyshev

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

open scoped Chebyshev

structure ChebyshevSpace where
  carrier : Type
  interval : Set ℝ
  basis : List (ℝ → ℝ)
  haarCondition : Prop

structure ChebyshevAdmittedObject where
  space : ChebyshevSpace
  bestApproximationExists : Prop
  uniqueness : Prop
  conclusion : bestApproximationExists ∧ uniqueness

def ChebyshevWitnessClosed (O : ChebyshevAdmittedObject) : Prop :=
  O.bestApproximationExists ∧ O.uniqueness

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse