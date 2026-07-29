import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure AlgebraicBetheAnsatzSystem where
  system : ExactlyQuasiSolvableSystem
  rMatrix : Type u
  monodromyMatrix : Type v
  transferMatrix : Type w
  betheEquations : Prop
  referenceState : Prop

def betheEquationsSatisfied (B : AlgebraicBetheAnsatzSystem) : Prop :=
  B.betheEquations

def referenceStateExists (B : AlgebraicBetheAnsatzSystem) : Prop :=
  B.referenceState

structure AlgebraicBetheAnsatzEvidence (B : AlgebraicBetheAnsatzSystem) where
  betheEquationsClosed : B.betheEquations
  referenceStateClosed : B.referenceState

def AlgebraicBetheAnsatzClosed (B : AlgebraicBetheAnsatzSystem) : Prop :=
  B.betheEquations ∧ B.referenceState

theorem algebraic_bethe_ansatz_closed_from_evidence (B : AlgebraicBetheAnsatzSystem)
    (E : AlgebraicBetheAnsatzEvidence B) : AlgebraicBetheAnsatzClosed B := by
  exact And.intro E.betheEquationsClosed E.referenceStateClosed

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse