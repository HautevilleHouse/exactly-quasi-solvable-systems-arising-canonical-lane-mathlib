import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure DifferentialOperatorRepresentation where
  differentialOperator : Type u
  polynomialCoefficients : Prop
  finiteDimensionalInvariantSubspace : Prop
  differentialOperatorClosed : Prop
  polynomialCoefficientsClosed : polynomialCoefficients
  finiteDimensionalInvariantSubspaceClosed : finiteDimensionalInvariantSubspace

structure DifferentialOperatorRepresentationEvidence (D : DifferentialOperatorRepresentation) where
  differentialOperatorClosed : D.differentialOperatorClosed
  polynomialCoefficientsClosed : D.polynomialCoefficientsClosed
  finiteDimensionalInvariantSubspaceClosed : D.finiteDimensionalInvariantSubspaceClosed

def DifferentialOperatorRepresentationClosed (D : DifferentialOperatorRepresentation) : Prop :=
  D.differentialOperatorClosed ∧ D.polynomialCoefficientsClosed ∧ D.finiteDimensionalInvariantSubspaceClosed

theorem differential_operator_representation_closed_from_evidence
    (D : DifferentialOperatorRepresentation) (E : DifferentialOperatorRepresentationEvidence D) :
    DifferentialOperatorRepresentationClosed D := by
  exact And.intro E.differentialOperatorClosed (And.intro E.polynomialCoefficientsClosed E.finiteDimensionalInvariantSubspaceClosed)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse