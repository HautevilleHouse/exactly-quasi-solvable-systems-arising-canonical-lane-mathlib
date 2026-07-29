import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure ParameterDeformationPackage where
  baseParameters : List ℝ
  deformationParameter : ℝ
  quasiSolvableFamily : Prop
  dependenceSmooth : Prop
  deformationAdmissibility : Prop

structure ParameterDeformationEvidence (P : ParameterDeformationPackage) where
  quasiSolvableFamilyClosed : P.quasiSolvableFamily
  dependenceSmoothClosed : P.dependenceSmooth
  deformationAdmissibilityClosed : P.deformationAdmissibility

def ParameterDeformationClosed (P : ParameterDeformationPackage) : Prop :=
  P.quasiSolvableFamily ∧ P.dependenceSmooth ∧ P.deformationAdmissibility

theorem parameter_deformation_closed_from_evidence (P : ParameterDeformationPackage)
    (E : ParameterDeformationEvidence P) : ParameterDeformationClosed P := by
  exact And.intro E.quasiSolvableFamilyClosed
    (And.intro E.dependenceSmoothClosed E.deformationAdmissibilityClosed)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse
