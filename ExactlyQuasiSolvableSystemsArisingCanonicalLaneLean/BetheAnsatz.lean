import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure BetheAnsatzState (V : Type u) where
  rapidities : List ℝ
  wavefunction : V → ℂ
  energy : ℝ
  normalization : ℝ

structure BetheEquations where
  equationSet : List (List ℝ → ℝ)
  solutions : List (List ℝ)
  completeness : Prop

def twoBodyDeltaInteractionBetheEquations (c : ℝ) (N : ℕ) : BetheEquations := {
  equationSet := List.map (λ i => λ k => k.get i + c * (List.sum (List.map (λ j => 1/(k.get i - k.get j)) (List.filter (λ j => j ≠ i) (List.range N)))) ) (List.range N)
  solutions := []
  completeness := False
}

structure AlgebraicBetheAnsatz where
  transferMatrix : Type
  monodromyMatrix : Type
  rMatrix : Type
  yangBaxterEquation : Prop
  referenceState : Type
  creationOperators : Type
  betheStates : Type

def sl2InvariantBetheAnsatz : AlgebraicBetheAnsatz := {
  transferMatrix := ℝ²ˣ²
  monodromyMatrix := ℝ²ˣ²⊗ⁿ
  rMatrix := ℝ⁴ˣ⁴
  yangBaxterEquation := by
    native_dec_trivial
  referenceState := ℂ²
  creationOperators := ℂ² → ℂ²⊗ⁿ
  betheStates := ℂ²⊗ⁿ
}

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse