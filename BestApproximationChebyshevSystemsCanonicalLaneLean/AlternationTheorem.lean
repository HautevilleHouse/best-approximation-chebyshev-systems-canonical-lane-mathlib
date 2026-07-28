import canonicalLaneMathlib.AdmissibleClass
import BestApproximationChebyshevSystemsCanonicalLaneLean.ChebyshevSystem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure AlternationTheoremPackage {α : Type u} [TopologicalSpace α] (CS : ChebyshevSystem α) where
  targetFunction : α → ℝ
  bestApproximation : α → ℝ
  alternationPoints : List α
  errorEquioscillation : Prop
  uniqueness : Prop

structure AlternationTheoremEvidence {α : Type u} [TopologicalSpace α] {CS : ChebyshevSystem α} (A : AlternationTheoremPackage CS) where
  errorEquioscillationClosed : A.errorEquioscillation
  uniquenessClosed : A.uniqueness

def AlternationTheoremClosed {α : Type u} [TopologicalSpace α] {CS : ChebyshevSystem α} (A : AlternationTheoremPackage CS) : Prop :=
  A.errorEquioscillation ∧ A.uniqueness

theorem alternation_theorem_closed_from_evidence {α : Type u} [TopologicalSpace α] {CS : ChebyshevSystem α} (A : AlternationTheoremPackage CS) (E : AlternationTheoremEvidence A) : AlternationTheoremClosed A :=
  And.intro E.errorEquioscillationClosed E.uniquenessClosed

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse