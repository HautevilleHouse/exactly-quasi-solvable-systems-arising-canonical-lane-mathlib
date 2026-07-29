import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure HamiltonianSpectrumPackage where
  hamiltonianType : Type u
  spectralParameters : List (ℝ × ℝ)
  quasiSolvableIndex : ℕ
  spectrumFinite : Prop
  exactlySolvableSubspace : Prop
  spectralParameterAdmissibility : Prop

structure HamiltonianSpectrumEvidence (H : HamiltonianSpectrumPackage) where
  spectrumFiniteClosed : H.spectrumFinite
  exactlySolvableSubspaceClosed : H.exactlySolvableSubspace
  spectralParameterAdmissibilityClosed : H.spectralParameterAdmissibility

def HamiltonianSpectrumClosed (H : HamiltonianSpectrumPackage) : Prop :=
  H.spectrumFinite ∧ H.exactlySolvableSubspace ∧ H.spectralParameterAdmissibility

theorem hamiltonian_spectrum_closed_from_evidence (H : HamiltonianSpectrumPackage)
    (E : HamiltonianSpectrumEvidence H) : HamiltonianSpectrumClosed H := by
  exact And.intro E.spectrumFiniteClosed
    (And.intro E.exactlySolvableSubspaceClosed E.spectralParameterAdmissibilityClosed)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse
