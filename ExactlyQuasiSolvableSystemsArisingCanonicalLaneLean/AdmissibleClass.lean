import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure ExactlyQuasiSolvableAdmittedObject where
  system : QuasiExactlySolvableSystem
  dimension : ℕ
  eigenvalueCount : ℕ
  analyticExactness : Bool

structure AdmissibleClass where
  object : ExactlyQuasiSolvableAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  QuasiExactlySolvableClosed A.object.system ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse