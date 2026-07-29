import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure LieAlgebraRepresentation where
  algebraGenerators : List Type
  representationSpace : Type
  action : algebraGenerators → (representationSpace → representationSpace)
  bracketClosed : Prop
  jacobiIdentity : Prop

structure DifferentialOperatorAlgebra where
  polynomialRing : Type u
  variables : List (PolynomialRing → ℝ)
  differentialOperators : List (PolynomialRing → PolynomialRing)
  commutationRelations : Prop

structure FlagOfSubspaces (V : Type u) [AddCommGroup V] where
  chain : ℕ → Submodule ℝ V
  inclusion : ∀ (i : ℕ), chain i ≤ chain (i+1)
  finiteDimensional : ∀ i, FiniteDimensional ℝ (chain i)
  unionCovers : ⨆ i, chain i = ⊤

def sl2Representation : LieAlgebraRepresentation := {
  algebraGenerators := [ℝ, ℝ, ℝ]
  representationSpace := Polynomial ℝ
  action := λ g f => match g with
    | 0 => λ p => derivative p
    | 1 => λ p => Polynomial.monomial 1 1 * p
    | 2 => λ p => Polynomial.monomial 1 2 * derivative p - Polynomial.monomial 1 1 * p
  bracketClosed := by
    native_dec_trivial
  jacobiIdentity := by
    native_dec_trivial
}

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse