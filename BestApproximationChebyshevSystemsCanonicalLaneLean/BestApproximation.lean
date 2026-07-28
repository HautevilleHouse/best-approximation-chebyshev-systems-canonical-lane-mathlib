import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure BestApproximationPackage (C : ChebyshevSystemPackage)
    (A : AlternationTheoremPackage C) where
  solutionUniqueness : Prop
  errorEstimate : Prop
  numericalMethod : Prop
  convergenceProof : Prop

structure BestApproximationEvidence {C : ChebyshevSystemPackage}
    {A : AlternationTheoremPackage C} (B : BestApproximationPackage C A) where
  solutionUniquenessClosed : B.solutionUniqueness
  errorEstimateClosed : B.errorEstimate
  convergenceProofClosed : B.convergenceProof

def BestApproximationClosed {C : ChebyshevSystemPackage}
    {A : AlternationTheoremPackage C} (B : BestApproximationPackage C A) : Prop :=
  B.solutionUniqueness ∧ B.errorEstimate ∧ B.convergenceProof

theorem best_approximation_closed_from_evidence {C : ChebyshevSystemPackage}
    {A : AlternationTheoremPackage C} (B : BestApproximationPackage C A)
    (E : BestApproximationEvidence B) : BestApproximationClosed B := by
  exact And.intro E.solutionUniquenessClosed
    (And.intro E.errorEstimateClosed E.convergenceProofClosed)

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse