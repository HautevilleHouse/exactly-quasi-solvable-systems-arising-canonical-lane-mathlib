import ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean.SpectralParameter

namespace HautevilleHouse
namespace ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean

structure LieAlgebraStructure {A : AdmissibleClass} (P : QuasiSolvableAlgebraPackage A) where
  bracket : A.object → A.object → A.object
  jacobiIdentity : Prop
  solvabilityCondition : Prop
  jacobiIdentityClosed : jacobiIdentity
  solvabilityConditionClosed : solvabilityCondition

def LieAlgebraClosed {A : AdmissibleClass} {P : QuasiSolvableAlgebraPackage A}
    (L : LieAlgebraStructure P) : Prop :=
  L.jacobiIdentity ∧ L.solvabilityCondition

structure ExactlyQuasiSolvableSystemsPackage {A : AdmissibleClass} (P : QuasiSolvableAlgebraPackage A) where
  lieAlgebra : LieAlgebraStructure P
  spectralFamily : SpectralParameterFamily P
  exactlySolvableCondition : Prop
  exactlySolvableConditionClosed : exactlySolvableCondition

def ExactlyQuasiSolvableClosed {A : AdmissibleClass} {P : QuasiSolvableAlgebraPackage A}
    (E : ExactlyQuasiSolvableSystemsPackage P) : Prop :=
  LieAlgebraClosed E.lieAlgebra ∧ FamilyClosed E.spectralFamily ∧ E.exactlySolvableConditionClosed

end ExactlyQuasiSolvableSystemsArisingCanonicalLaneLean
end HautevilleHouse