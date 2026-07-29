import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure HamiltonianParameters where
  couplingConstants : List ℝ
  masses : List ℝ
  frequencies : List ℝ
  anharmonicity : ℝ
  dimension : ℕ
  domainType : String

structure PotentialForm where
  name : String
  expression : Polynomial ℝ → ℝ
  parameters : HamiltonianParameters
  quasiExactnessDegree : ℕ

def harmonicOscillatorPotential (k : ℝ) : PotentialForm := {
  name := "HarmonicOscillator"
  expression := λ x => k*x^2
  parameters := { couplingConstants := [k], masses := [1.0], frequencies := [1.0], anharmonicity := 0.0, dimension := 1, domainType := "full" }
  quasiExactnessDegree := 0
}

def anharmonicOscillatorPotential (λ : ℝ) (k : ℝ) : PotentialForm := {
  name := "AnharmonicOscillator"
  expression := λ x => x^2 + λ*x^4
  parameters := { couplingConstants := [λ], masses := [1.0], frequencies := [1.0], anharmonicity := λ, dimension := 1, domainType := "full" }
  quasiExactnessDegree := 2
}

structure Hamiltonian (V : Type u) where
  kineticTerm : (V → ℝ) → (V → ℝ)
  potential : V → ℝ
  spectrum : Set ℝ
  eigenfunctions : List (V → ℝ)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse