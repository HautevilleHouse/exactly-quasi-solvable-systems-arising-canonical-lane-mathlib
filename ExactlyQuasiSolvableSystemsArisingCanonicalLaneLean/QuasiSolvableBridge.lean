import ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.solvableComponent ∧ A.object.quasiDeformation

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  match A.object with
  | ⟨_, _, h, _, _⟩ => h
  end

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse