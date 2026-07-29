import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure QuasiSolvableAdmittedObject where
  system : Type
  solvabilityProperty : Prop
  exactlyQuasiSolvable : Prop
  conclusion : exactlyQuasiSolvable

def QuasiSolvableWitnessClosed (O : QuasiSolvableAdmittedObject) : Prop :=
  O.exactlyQuasiSolvable

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse
