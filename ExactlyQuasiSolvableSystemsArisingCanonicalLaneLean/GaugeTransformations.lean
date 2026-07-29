import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure GaugeTransformationGroup where
  system : ExactlyQuasiSolvableSystem
  gaugeTransformations : Set (ℂ → ℂ)
  invarianceOfHamiltonian : Prop
  closureUnderComposition : Prop

def hamiltonianInvariant (G : GaugeTransformationGroup) : Prop :=
  G.invarianceOfHamiltonian

def closureUnderCompositionHolds (G : GaugeTransformationGroup) : Prop :=
  G.closureUnderComposition

structure GaugeTransformationEvidence (G : GaugeTransformationGroup) where
  invarianceClosed : G.invarianceOfHamiltonian
  closureClosed : G.closureUnderComposition

def GaugeTransformationClosed (G : GaugeTransformationGroup) : Prop :=
  G.invarianceOfHamiltonian ∧ G.closureUnderComposition

theorem gauge_transformation_closed_from_evidence (G : GaugeTransformationGroup)
    (E : GaugeTransformationEvidence G) : GaugeTransformationClosed G := by
  exact And.intro E.invarianceClosed E.closureClosed

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse