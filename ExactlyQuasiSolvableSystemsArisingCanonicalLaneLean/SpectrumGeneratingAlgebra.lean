import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure SpectrumGeneratingAlgebra where
  ladderOperators : Type u
  commutationWithHamiltonian : Prop
  spectrumDiscrete : Prop
  ladderOperatorsClosed : ladderOperators
  commutationWithHamiltonianClosed : commutationWithHamiltonian
  spectrumDiscreteClosed : spectrumDiscrete

structure SpectrumGeneratingAlgebraEvidence (S : SpectrumGeneratingAlgebra) where
  ladderOperatorsClosed : S.ladderOperatorsClosed
  commutationWithHamiltonianClosed : S.commutationWithHamiltonianClosed
  spectrumDiscreteClosed : S.spectrumDiscreteClosed

def SpectrumGeneratingAlgebraClosed (S : SpectrumGeneratingAlgebra) : Prop :=
  S.ladderOperatorsClosed ∧ S.commutationWithHamiltonianClosed ∧ S.spectrumDiscreteClosed

theorem spectrum_generating_algebra_closed_from_evidence
    (S : SpectrumGeneratingAlgebra) (E : SpectrumGeneratingAlgebraEvidence S) :
    SpectrumGeneratingAlgebraClosed S := by
  exact And.intro E.ladderOperatorsClosed (And.intro E.commutationWithHamiltonianClosed E.spectrumDiscreteClosed)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse