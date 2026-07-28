import BestApproximationChebyshevSystemsCanonicalLaneLean.ChebyshevSystems

/-!
# Haar Condition Package
-/

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure HaarConditionPackage (S : ChebyshevSystem) where
  linearIndependent : Prop
  zeroCrossingsBounded : Prop
  signatureProperty : Prop
  haarConditionEvidence : linearIndependent ∧ zeroCrossingsBounded ∧ signatureProperty

structure HaarConditionEvidence {S : ChebyshevSystem} (H : HaarConditionPackage S) where
  linearIndependentClosed : H.linearIndependent
  zeroCrossingsBoundedClosed : H.zeroCrossingsBounded
  signaturePropertyClosed : H.signatureProperty

def HaarConditionClosed {S : ChebyshevSystem} (H : HaarConditionPackage S) : Prop :=
  H.linearIndependent ∧ H.zeroCrossingsBounded ∧ H.signatureProperty

theorem haar_condition_closed_from_evidence
    {S : ChebyshevSystem} (H : HaarConditionPackage S) (E : HaarConditionEvidence H) :
    HaarConditionClosed H := by
  exact And.intro E.linearIndependentClosed
    (And.intro E.zeroCrossingsBoundedClosed E.signaturePropertyClosed)

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse