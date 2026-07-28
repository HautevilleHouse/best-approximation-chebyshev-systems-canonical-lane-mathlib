import BestApproximationChebyshevSystemsCanonicalLaneLean.ChebyshevSystemObjects

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure ChebyshevAnalyticCertificate (O : ChebyshevAdmittedObject) where
  bestApproximationUnique : Prop
  alternationTheorem : Prop
  bestApproximationUniqueClosed : bestApproximationUnique
  alternationTheoremClosed : alternationTheorem
  evidence : ChebyshevWitnessClosed O

def ChebyshevAnalyticCertificateClosed (C : ChebyshevAnalyticCertificate O) : Prop :=
  C.bestApproximationUnique ∧ C.alternationTheorem ∧ ChebyshevWitnessClosed O

theorem chebyshev_analytic_certificate_closed
    (O : ChebyshevAdmittedObject) (C : ChebyshevAnalyticCertificate O) :
    ChebyshevAnalyticCertificateClosed C := by
  exact And.intro C.bestApproximationUniqueClosed
    (And.intro C.alternationTheoremClosed C.evidence)

structure ChebyshevProofRoute (A : AdmissibleClass) where
  certificate : ChebyshevAnalyticCertificate A.object
  bridgeClosedFromRoute : bridgeClosed A
  gateClosedFromRoute : gateClosed A

theorem chebyshev_proof_route_yields_constrained_closure
    (A : AdmissibleClass) (R : ChebyshevProofRoute A) :
    ConstrainedChebyshevClosure A := by
  exact And.intro R.bridgeClosedFromRoute R.gateClosedFromRoute

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse