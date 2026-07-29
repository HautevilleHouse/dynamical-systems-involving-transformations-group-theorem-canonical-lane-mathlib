import DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.ErgodicityInvariantMeasures

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure SpectralPackage (P : GroupActionPackage) where
  representation : P.G → P.M → ℂ
  unitaryRepresentation : Prop
  irreducibleDecomposition : Prop
  spectralMeasure : Type u
  spectralTheoremApplied : Prop

structure SpectralEvidence (P : GroupActionPackage) (S : SpectralPackage P) where
  unitaryRepresentationClosed : S.unitaryRepresentation
  irreducibleDecompositionClosed : S.irreducibleDecomposition
  spectralTheoremAppliedClosed : S.spectralTheoremApplied

def SpectralClosed (P : GroupActionPackage) (S : SpectralPackage P) : Prop :=
  S.unitaryRepresentation ∧ S.irreducibleDecomposition ∧ S.spectralTheoremApplied

theorem spectral_closed_from_evidence (P : GroupActionPackage) (S : SpectralPackage P) (E : SpectralEvidence P S) : SpectralClosed P S := by
  exact And.intro E.unitaryRepresentationClosed (And.intro E.irreducibleDecompositionClosed E.spectralTheoremAppliedClosed)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
