import ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure QuasiSolvableAlgebra (A : AdmissibleClass) where
  representation : Type u
  action : representation → A.object → A.object
  invariantSubspace : Prop
  solvabilityCondition : Prop
  invariantSubspaceClosed : invariantSubspace
  solvabilityConditionClosed : solvabilityCondition

structure QuasiSolvableAlgebraPackage (A : AdmissibleClass) where
  algebra : QuasiSolvableAlgebra A
  baseField : Type v
  dimension : Nat
  flag : List (A.object → Prop)

def AlgebraClosed {A : AdmissibleClass} (P : QuasiSolvableAlgebraPackage A) : Prop :=
  P.algebra.invariantSubspace ∧ P.algebra.solvabilityCondition

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse