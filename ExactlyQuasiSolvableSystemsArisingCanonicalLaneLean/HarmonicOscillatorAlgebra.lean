import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure HarmonicOscillatorAlgebra where
  creationOperator : Type u
  annihilationOperator : Type v
  numberOperator : Type w
  commutationRelation : Prop
  creationAnnihilationClosed : Prop
  numberOperatorClosed : Prop
  commutationRelationClosed : commutationRelation

structure HarmonicOscillatorAlgebraEvidence (H : HarmonicOscillatorAlgebra) where
  creationAnnihilationClosed : H.creationAnnihilationClosed
  numberOperatorClosed : H.numberOperatorClosed
  commutationRelationClosed : H.commutationRelationClosed

def HarmonicOscillatorAlgebraClosed (H : HarmonicOscillatorAlgebra) : Prop :=
  H.creationAnnihilationClosed ∧ H.numberOperatorClosed ∧ H.commutationRelationClosed

theorem harmonic_oscillator_algebra_closed_from_evidence
    (H : HarmonicOscillatorAlgebra) (E : HarmonicOscillatorAlgebraEvidence H) :
    HarmonicOscillatorAlgebraClosed H := by
  exact And.intro E.creationAnnihilationClosed (And.intro E.numberOperatorClosed E.commutationRelationClosed)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse