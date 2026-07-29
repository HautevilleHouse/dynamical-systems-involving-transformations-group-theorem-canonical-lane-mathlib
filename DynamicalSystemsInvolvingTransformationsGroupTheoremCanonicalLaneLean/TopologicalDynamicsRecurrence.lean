import DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.TransformationGroupSpectralTheory

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure RecurrencePackage (P : GroupActionPackage) where
  recurrentPoints : Set P.M
  minimalSets : Set (Set P.M)
  topologicalTransitivity : Prop
  mixingProperty : Prop
  specificationProperty : Prop

structure RecurrenceEvidence (P : GroupActionPackage) (R : RecurrencePackage P) where
  topologicalTransitivityClosed : R.topologicalTransitivity
  mixingPropertyClosed : R.mixingProperty
  specificationPropertyClosed : R.specificationProperty

def RecurrenceClosed (P : GroupActionPackage) (R : RecurrencePackage P) : Prop :=
  R.topologicalTransitivity ∧ R.mixingProperty ∧ R.specificationProperty

theorem recurrence_closed_from_evidence (P : GroupActionPackage) (R : RecurrencePackage P) (E : RecurrenceEvidence P R) : RecurrenceClosed P R := by
  exact And.intro E.topologicalTransitivityClosed (And.intro E.mixingPropertyClosed E.specificationPropertyClosed)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
