import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure ChebyshevSystem (α : Type u) [TopologicalSpace α] where
  functions : List (α → ℝ)
  dimension : ℕ
  haarProperty : Prop
  continuous : Prop

structure ChebyshevSystemEvidence {α : Type u} [TopologicalSpace α] (C : ChebyshevSystem α) where
  haarPropertyClosed : C.haarProperty
  continuousClosed : C.continuous

def ChebyshevSystemClosed {α : Type u} [TopologicalSpace α] (C : ChebyshevSystem α) : Prop :=
  C.haarProperty ∧ C.continuous

theorem chebyshev_system_closed_from_evidence {α : Type u} [TopologicalSpace α] (C : ChebyshevSystem α) (E : ChebyshevSystemEvidence C) : ChebyshevSystemClosed C :=
  And.intro E.haarPropertyClosed E.continuousClosed

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse