import ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

def ConstrainedQuasiSolvableClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_quasi_solvable_endgame (A : AdmissibleClass) : ConstrainedQuasiSolvableClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse