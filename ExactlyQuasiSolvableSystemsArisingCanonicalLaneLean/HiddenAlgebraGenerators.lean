import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure HiddenAlgebraStructure where
  system : ExactlyQuasiSolvableSystem
  generators : List (ℕ → ℂ)
  commutationRelations : Prop
  closureUnderBracket : Prop
  representationOnHilbertSpace : Prop

def commutationRelationsHold (H : HiddenAlgebraStructure) : Prop :=
  H.commutationRelations

def closureUnderBracketHolds (H : HiddenAlgebraStructure) : Prop :=
  H.closureUnderBracket

def representationExists (H : HiddenAlgebraStructure) : Prop :=
  H.representationOnHilbertSpace

structure HiddenAlgebraEvidence (H : HiddenAlgebraStructure) where
  commutationRelationsClosed : H.commutationRelations
  closureUnderBracketClosed : H.closureUnderBracket
  representationClosed : H.representationOnHilbertSpace

def HiddenAlgebraClosed (H : HiddenAlgebraStructure) : Prop :=
  H.commutationRelations ∧ H.closureUnderBracket ∧ H.representationOnHilbertSpace

theorem hidden_algebra_closed_from_evidence (H : HiddenAlgebraStructure)
    (E : HiddenAlgebraEvidence H) : HiddenAlgebraClosed H := by
  exact And.intro E.commutationRelationsClosed
    (And.intro E.closureUnderBracketClosed E.representationClosed)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse