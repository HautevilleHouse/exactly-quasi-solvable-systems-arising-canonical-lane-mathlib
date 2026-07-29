import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure QuasiExactlySolvableSystem where
  HilbertSpace : Type u
  innerProduct : HilbertSpace → HilbertSpace → ℝ
  hamiltonian : HilbertSpace → HilbertSpace
  creationOperators : List (HilbertSpace → HilbertSpace)
  annihilationOperators : List (HilbertSpace → HilbertSpace)
  commutationRelations : Prop
  spectrum : Set ℝ
  eigenstates : List HilbertSpace
  analyticBetheAnsatz : Bool

structure QuasiExactlySolvableEvidence (Q : QuasiExactlySolvableSystem) where
  hamiltonianSelfAdjoint : Prop
  commutationRelationsClosed : Q.commutationRelations
  spectrumDiscrete : Q.spectrum.countable ∧ Q.spectrum.closed
  eigenstatesComplete : Prop
  analyticBetheAnsatzValid : Q.analyticBetheAnsatz

def QuasiExactlySolvableClosed (Q : QuasiExactlySolvableSystem) : Prop :=
  Q.commutationRelations ∧ Q.analyticBetheAnsatz

theorem quasi_exactly_solvable_closed_from_evidence
    (Q : QuasiExactlySolvableSystem) (E : QuasiExactlySolvableEvidence Q) :
    QuasiExactlySolvableClosed Q := by
  exact And.intro E.commutationRelationsClosed E.analyticBetheAnsatzValid

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse