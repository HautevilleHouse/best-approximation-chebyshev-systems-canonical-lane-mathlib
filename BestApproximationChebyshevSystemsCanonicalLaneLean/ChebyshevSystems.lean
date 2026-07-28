import BestApproximationChebyshevSystemsCanonicalLaneLean.MathlibObjects

/-!
# Chebyshev Systems Package
-/

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure ChebyshevSystem where
  functionSpace : Type u
  interval : Set ℝ
  dimension : ℕ
  unisolvence : Prop

structure ChebyshevSystemEvidence (S : ChebyshevSystem) where
  unisolvenceClosed : S.unisolvence

def ChebyshevSystemClosed (S : ChebyshevSystem) : Prop :=
  S.unisolvence

theorem chebyshev_system_closed_from_evidence
    (S : ChebyshevSystem) (E : ChebyshevSystemEvidence S) :
    ChebyshevSystemClosed S := by
  exact E.unisolvenceClosed

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse