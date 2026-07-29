import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure QuasiExactSpectrumPackage where
  hamiltonianType : Type u
  spectralType : Type v
  exactPartCount : ℕ
  residualSpectrum : Prop
  exactPartDiagonalizable : Prop
  spectralAdmissibility : Prop

structure QuasiExactSpectrumEvidence (Q : QuasiExactSpectrumPackage) where
  residualSpectrumClosed : Q.residualSpectrum
  exactPartDiagonalizableClosed : Q.exactPartDiagonalizable
  spectralAdmissibilityClosed : Q.spectralAdmissibility

def QuasiExactSpectrumClosed (Q : QuasiExactSpectrumPackage) : Prop :=
  Q.residualSpectrum ∧ Q.exactPartDiagonalizable ∧ Q.spectralAdmissibility

theorem quasi_exact_spectrum_closed_from_evidence (Q : QuasiExactSpectrumPackage)
    (E : QuasiExactSpectrumEvidence Q) : QuasiExactSpectrumClosed Q := by
  exact And.intro E.residualSpectrumClosed
    (And.intro E.exactPartDiagonalizableClosed E.spectralAdmissibilityClosed)

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse
