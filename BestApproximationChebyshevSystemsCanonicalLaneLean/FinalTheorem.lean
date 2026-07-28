import canonicalLaneMathlib.AdmissibleClass
import BestApproximationChebyshevSystemsCanonicalLaneLean.ChebyshevBridgeLemmas
import BestApproximationChebyshevSystemsCanonicalLaneLean.ChebyshevGateLemmas

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

def ConstrainedChebyshevClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chebyshev_endgame (A : AdmissibleClass) : ConstrainedChebyshevClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse