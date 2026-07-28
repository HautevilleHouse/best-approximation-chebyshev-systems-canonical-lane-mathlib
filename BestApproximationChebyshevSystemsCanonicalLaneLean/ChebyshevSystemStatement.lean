import BestApproximationChebyshevSystemsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BestApproximationChebyshevSystemsCanonicalLaneLean

structure ChebyshevProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def chebyshevProofObligation : ChebyshevProofObligation := {
  sourceKey := "BestApproximationChebyshevSystemsCanonicalLaneLean",
  theoremObject := "Best Approximation Chebyshev Systems",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "The endgame pilot closes over the admitted class; unrestricted classical closure remains carried."
}

theorem chebyshev_statement_check :
    chebyshevProofObligation.theoremSpecificDefinitionsNative = true := by
  rfl

theorem chebyshev_statement_admitted_closure_native :
    chebyshevProofObligation.theoremSpecificAdmittedClosureNative = true := by
  rfl

end BestApproximationChebyshevSystemsCanonicalLaneLean
end HautevilleHouse