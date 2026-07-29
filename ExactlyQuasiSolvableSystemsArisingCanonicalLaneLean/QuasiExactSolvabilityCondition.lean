import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure QuasiExactSolvabilityCondition (G : HarmonicOscillatorAlgebra) where
  finiteGapCondition : Prop
  algebraicBetheAnsatz : Prop
  closureUnderSymmetries : Prop
  finiteGapConditionClosed : finiteGapCondition
  algebraicBetheAnsatzClosed : algebraicBetheAnsatz
  closureUnderSymmetriesClosed : closureUnderSymmetries

structure QuasiExactSolvabilityConditionEvidence {G : HarmonicOscillatorAlgebra}
    (Q : QuasiExactSolvabilityCondition G) where
  finiteGapConditionClosed : Q.finiteGapConditionClosed
  algebraicBetheAnsatzClosed : Q.algebraicBetheAnsatzClosed
  closureUnderSymmetriesClosed : Q.closureUnderSymmetriesClosed

def QuasiExactSolvabilityConditionClosed {G : HarmonicOscillatorAlgebra}
    (Q : QuasiExactSolvabilityCondition G) : Prop :=
  Q.finiteGapCondition ∧ Q.algebraicBetheAnsatz ∧ Q.closureUnderSymmetries

theorem quasi_exact_solvability_condition_closed_from_evidence
    {G : HarmonicOscillatorAlgebra} (Q : QuasiExactSolvabilityCondition G)
    (E : QuasiExactSolvabilityConditionEvidence Q) :
    QuasiExactSolvabilityConditionClosed Q := by
  exact And.intro E.finiteGapConditionClosed (And.intro E.algebraicBetheAnsatzClosed E.closureUnderSymmetriesClosed)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse