import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure GaugeGroup where
  groupType : Type u
  lieAlgebra : LieAlgebraRepresentation
  coupling : ℝ
  representation : ℕ

def U1GaugeGroup : GaugeGroup := {
  groupType := ℝ
  lieAlgebra := { algebraGenerators := [ℝ], representationSpace := ℂ, action := λ g z => (g * Complex.I) * z, bracketClosed := by native_dec_trivial, jacobiIdentity := by native_dec_trivial }
  coupling := 1.0
  representation := 1
}

def SU2GaugeGroup : GaugeGroup := {
  groupType := ℂ²ˣ²
  lieAlgebra := { algebraGenerators := [ℂ, ℂ, ℂ], representationSpace := ℂ², action := λ g v => (g : Matrix ℂ 2 2) * v, bracketClosed := by native_dec_trivial, jacobiIdentity := by native_dec_trivial }
  coupling := 0.0
  representation := 2
}

structure GaugeField where
  gaugeGroup : GaugeGroup
  fieldStrength : Type
  connection : Type
  actionFunctional : Type
  equationsOfMotion : Prop

def yangMillsAction (F : GaugeField) : Prop := False

structure ExactlyQuasiSolvableGaugeTheory where
  gaugeField : GaugeField
  hamiltonian : QuasiExactlySolvableSystem
  ansatzStates : List (BetheAnsatzState (VectorSpace ℂ))
  constraints : Prop

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse