import BestApproximationChebyshevSystemsCanonicalLaneLean.BestApproximationUniqueness

/-!
# Remez Algorithm Package
-/

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure RemezAlgorithmPackage {C : ChebyshevSystem} {H : HaarConditionPackage C} {A : AlternationTheoremPackage H} (U : BestApproximationUniquenessPackage A) where
  algorithmConverges : Prop
  exchangeStepWorks : Prop
  producesBestApproximation : Prop

structure RemezAlgorithmEvidence {C : ChebyshevSystem} {H : HaarConditionPackage C} {A : AlternationTheoremPackage H} {U : BestApproximationUniquenessPackage A} (R : RemezAlgorithmPackage U) where
  algorithmConvergesClosed : R.algorithmConverges
  exchangeStepWorksClosed : R.exchangeStepWorks
  producesBestApproximationClosed : R.producesBestApproximation

def RemezAlgorithmClosed {C : ChebyshevSystem} {H : HaarConditionPackage C} {A : AlternationTheoremPackage H} {U : BestApproximationUniquenessPackage A} (R : RemezAlgorithmPackage U) : Prop :=
  R.algorithmConverges ∧ R.exchangeStepWorks ∧ R.producesBestApproximation

theorem remez_algorithm_closed_from_evidence {C : ChebyshevSystem} {H : HaarConditionPackage C} {A : AlternationTheoremPackage H} {U : BestApproximationUniquenessPackage A} (R : RemezAlgorithmPackage U) (E : RemezAlgorithmEvidence R) : RemezAlgorithmClosed R := by
  exact And.intro E.algorithmConvergesClosed (And.intro E.exchangeStepWorksClosed E.producesBestApproximationClosed)

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse