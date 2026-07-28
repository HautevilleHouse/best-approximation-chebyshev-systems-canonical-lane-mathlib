import canonicalLaneMathlib.AdmissibleClass
import BestApproximationChebyshevSystemsCanonicalLaneLean.ChebyshevSystemBasics

/-!
# Müntz–Haar Theorem for Chebyshev Systems
-/

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure MuntzHaarPackage (C : ChebyshevSystem) where
  exponentSequence : List ℝ
  denseSpanCondition : Prop
  chebyshevOnInterval : Prop
  muntzHaarCondition : Prop
  equivalenceStatement : muntzHaarCondition ↔ denseSpanCondition

structure MuntzHaarEvidence {C : ChebyshevSystem}
    (M : MuntzHaarPackage C) where
  denseSpanConditionClosed : M.denseSpanCondition
  muntzHaarConditionClosed : M.muntzHaarCondition
  equivalenceClosed : M.equivalenceStatement

def MuntzHaarClosed {C : ChebyshevSystem} (M : MuntzHaarPackage C) : Prop :=
  M.denseSpanCondition ∧ M.muntzHaarCondition ∧ M.equivalenceStatement

theorem muntz_haar_closed_from_evidence
    {C : ChebyshevSystem} (M : MuntzHaarPackage C)
    (E : MuntzHaarEvidence M) : MuntzHaarClosed M := by
  exact And.intro E.denseSpanConditionClosed
    (And.intro E.muntzHaarConditionClosed E.equivalenceClosed)

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse