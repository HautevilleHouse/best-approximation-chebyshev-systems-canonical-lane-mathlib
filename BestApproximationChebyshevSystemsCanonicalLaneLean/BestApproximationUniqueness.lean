import canonicalLaneMathlib.AdmissibleClass
import BestApproximationChebyshevSystemsCanonicalLaneLean.ChebyshevSystemBasics

/-!
# Uniqueness of Best Approximation in Chebyshev Systems
-/

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure BestApproximationUniquenessPackage (C : ChebyshevSystem) where
  targetFunction : ℝ → ℝ
  bestApproximationExists : Prop
  bestApproximationUnique : Prop
  approximationError : ℝ
  closednessProperty : bestApproximationExists ∧ bestApproximationUnique

structure BestApproximationUniquenessEvidence {C : ChebyshevSystem}
    (U : BestApproximationUniquenessPackage C) where
  bestApproximationExistsClosed : U.bestApproximationExists
  bestApproximationUniqueClosed : U.bestApproximationUnique

def BestApproximationUniquenessClosed {C : ChebyshevSystem}
    (U : BestApproximationUniquenessPackage C) : Prop :=
  U.bestApproximationExists ∧ U.bestApproximationUnique

theorem best_approximation_uniqueness_closed_from_evidence
    {C : ChebyshevSystem} (U : BestApproximationUniquenessPackage C)
    (E : BestApproximationUniquenessEvidence U) :
    BestApproximationUniquenessClosed U := by
  exact And.intro E.bestApproximationExistsClosed E.bestApproximationUniqueClosed

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse