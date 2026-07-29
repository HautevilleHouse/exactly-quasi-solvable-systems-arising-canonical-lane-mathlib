import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure LadderOperatorAlgebraPackage where
  lieAlgebraType : Type u
  raisingOperator : String
  loweringOperator : String
  commutationRelation : Prop
  recurrenceFactor : ℝ
  ladderAdmissibility : Prop

structure LadderOperatorAlgebraEvidence (L : LadderOperatorAlgebraPackage) where
  commutationRelationClosed : L.commutationRelation
  recurrenceFactorClosed : L.recurrenceFactor = 0
  ladderAdmissibilityClosed : L.ladderAdmissibility

def LadderOperatorAlgebraClosed (L : LadderOperatorAlgebraPackage) : Prop :=
  L.commutationRelation ∧ L.recurrenceFactor = 0 ∧ L.ladderAdmissibility

theorem ladder_operator_algebra_closed_from_evidence (L : LadderOperatorAlgebraPackage)
    (E : LadderOperatorAlgebraEvidence L) : LadderOperatorAlgebraClosed L := by
  exact And.intro E.commutationRelationClosed
    (And.intro E.recurrenceFactorClosed E.ladderAdmissibilityClosed)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse
