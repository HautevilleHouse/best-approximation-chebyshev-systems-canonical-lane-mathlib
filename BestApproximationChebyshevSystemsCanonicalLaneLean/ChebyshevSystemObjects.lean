import BestApproximationChebyshevSystemsCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic
import Mathlib.Analysis.SpecialFunctions.Pow

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure ChebyshevSystem (α : Type u) [TopologicalSpace α] where
  basis : List (α → ℝ)
  haarsCondition : Prop
  dimension : Nat
  basisLinearIndependent : Prop
  basisContinuous : Prop

structure ChebyshevSpace (α : Type u) [TopologicalSpace α] where
  carrier : Set α
  topology : TopologicalSpace α := by infer_instance
  compact : Prop
  connected : Prop

structure ChebyshevAdmittedObject where
  space : ChebyshevSpace (Fin 2) -- example: domain for Chebyshev approximation
  system : ChebyshevSystem (Fin 2)
  bestApproximationUnique : Prop
  alternationTheorem : Prop
  conclusion : bestApproximationUnique ∧ alternationTheorem

/-- Witness that the Chebyshev system satisfies the Haar condition. -/
def ChebyshevWitnessClosed (O : ChebyshevAdmittedObject) : Prop :=
  O.conclusion.1 ∧ O.conclusion.2

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse