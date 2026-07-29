import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure ExactlyQuasiSolvableSystem where
  hilbertSpace : Type u
  hamiltonian : hilbertSpace → ℂ
  symmetryAlgebra : List (hilbertSpace → ℂ)
  algebraicCondition : Prop
  closedFormBasis : Prop

def algebraicConditionSatisfied (S : ExactlyQuasiSolvableSystem) : Prop :=
  S.algebraicCondition

def closedFormBasisExists (S : ExactlyQuasiSolvableSystem) : Prop :=
  S.closedFormBasis

structure ExactlyQuasiSolvableEvidence (S : ExactlyQuasiSolvableSystem) where
  algebraicConditionClosed : S.algebraicCondition
  closedFormBasisClosed : S.closedFormBasis

def ExactlyQuasiSolvableClosed (S : ExactlyQuasiSolvableSystem) : Prop :=
  S.algebraicCondition ∧ S.closedFormBasis

theorem exactly_quasi_solvable_closed_from_evidence (S : ExactlyQuasiSolvableSystem)
    (E : ExactlyQuasiSolvableEvidence S) : ExactlyQuasiSolvableClosed S := by
  exact And.intro E.algebraicConditionClosed E.closedFormBasisClosed

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse