import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure DifferentialRealizationPackage where
  functionSpaceType : Type u
  differentialOperator : ℕ → (ℝ → ℝ)
  eigenfunctionBasis : List (ℝ → ℝ)
  finiteBasisCondition : Prop
  closedUnderOperator : Prop
  realizationAdmissibility : Prop

structure DifferentialRealizationEvidence (D : DifferentialRealizationPackage) where
  finiteBasisConditionClosed : D.finiteBasisCondition
  closedUnderOperatorClosed : D.closedUnderOperator
  realizationAdmissibilityClosed : D.realizationAdmissibility

def DifferentialRealizationClosed (D : DifferentialRealizationPackage) : Prop :=
  D.finiteBasisCondition ∧ D.closedUnderOperator ∧ D.realizationAdmissibility

theorem differential_realization_closed_from_evidence (D : DifferentialRealizationPackage)
    (E : DifferentialRealizationEvidence D) : DifferentialRealizationClosed D := by
  exact And.intro E.finiteBasisConditionClosed
    (And.intro E.closedUnderOperatorClosed E.realizationAdmissibilityClosed)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse
