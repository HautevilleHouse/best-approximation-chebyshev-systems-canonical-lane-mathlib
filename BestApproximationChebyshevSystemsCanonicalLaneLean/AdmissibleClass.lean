import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure ChebyshevAdmittedObject where
  interval : Set ℝ
  functions : List (ℝ → ℝ)
  haarCondition : Prop
  linearSpanDimension : ℕ
  conclusion : haarCondition ∧ linearSpanDimension = functions.length

structure AdmissibleClass where
  object : ChebyshevAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChebyshevWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse