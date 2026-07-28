import canonicalLaneMathlib.AdmissibleClass

/-!
# Basic Definitions for Chebyshev Systems
-/

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure ChebyshevSystem where
  interval : Set ℝ
  functions : List (ℝ → ℝ)
  linearIndependence : Prop
  haarCondition : Prop
  dimension : ℕ
  dimensionEqLength : dimension = functions.length
  haarConditionImplies : haarCondition → linearIndependence

structure ChebyshevEvidence (C : ChebyshevSystem) where
  linearIndependenceClosed : C.linearIndependence
  haarConditionClosed : C.haarCondition
  dimensionEqLengthClosed : C.dimensionEqLength

def ChebyshevSystemClosed (C : ChebyshevSystem) : Prop :=
  C.linearIndependence ∧ C.haarCondition ∧ C.dimensionEqLength

theorem chebyshev_system_closed_from_evidence
    (C : ChebyshevSystem) (E : ChebyshevEvidence C) :
    ChebyshevSystemClosed C := by
  exact And.intro E.linearIndependenceClosed
    (And.intro E.haarConditionClosed E.dimensionEqLengthClosed)

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse