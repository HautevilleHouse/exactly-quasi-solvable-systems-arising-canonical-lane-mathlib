import ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure BetheAnsatzPackage where
  transferMatrix : Prop
  rapproadNumber : Prop
  analyticContinuation : Prop

def BetheAnsatzClosed (P : BetheAnsatzPackage) : Prop :=
  P.transferMatrix ∧ P.rapproadNumber ∧ P.analyticContinuation

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse