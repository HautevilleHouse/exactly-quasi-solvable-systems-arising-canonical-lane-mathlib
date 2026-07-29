import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure QuasiSolvableSystem where
  carrier : Type u
  algebra : Type v
  solvableComponent : Prop
  quasiDeformation : Prop
  endpointWitness : solvableComponent ∨ quasiDeformation

structure AdmissibleClass where
  object : QuasiSolvableSystem
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.solvableComponent ∧ A.object.quasiDeformation) ∨ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse