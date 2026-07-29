import ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean.QuasiSolvabilityAlgebra

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure SpectralParameter {A : AdmissibleClass} (P : QuasiSolvableAlgebraPackage A) where
  parameterValue : ℂ
  eigenvalueEquation : Prop
  boundaryCondition : Prop
  eigenvalueEquationClosed : eigenvalueEquation
  boundaryConditionClosed : boundaryCondition

def SpectralParameterClosed {A : AdmissibleClass} {P : QuasiSolvableAlgebraPackage A}
    (S : SpectralParameter P) : Prop :=
  S.eigenvalueEquation ∧ S.boundaryCondition

structure SpectralParameterFamily {A : AdmissibleClass} (P : QuasiSolvableAlgebraPackage A) where
  parameters : ℕ → SpectralParameter P
  analyticContinuation : Prop
  analyticContinuationClosed : analyticContinuation

def FamilyClosed {A : AdmissibleClass} {P : QuasiSolvableAlgebraPackage A}
    (F : SpectralParameterFamily P) : Prop :=
  (∀ n : ℕ, SpectralParameterClosed (F.parameters n)) ∧ F.analyticContinuationClosed

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse