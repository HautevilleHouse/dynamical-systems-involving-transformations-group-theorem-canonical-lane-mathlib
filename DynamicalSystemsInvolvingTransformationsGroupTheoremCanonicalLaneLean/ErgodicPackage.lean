import DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.InvariantMeasurePackage

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure ErgodicPackage {T : TransformationGroupPackage}
    {M : InvariantMeasurePackage T} where
  ergodicDecomposition : Prop
  ergodicTheorem : Prop
  mixingProperty : Prop

structure ErgodicEvidence {T : TransformationGroupPackage}
    {M : InvariantMeasurePackage T} (E : ErgodicPackage M) where
  ergodicDecompositionClosed : E.ergodicDecomposition
  ergodicTheoremClosed : E.ergodicTheorem
  mixingPropertyClosed : E.mixingProperty

def ErgodicClosed {T : TransformationGroupPackage}
    {M : InvariantMeasurePackage T} (E : ErgodicPackage M) : Prop :=
  E.ergodicDecomposition ∧ E.ergodicTheorem ∧ E.mixingProperty

theorem ergodic_closed_from_evidence {T : TransformationGroupPackage}
    {M : InvariantMeasurePackage T} (E : ErgodicPackage M)
    (Ev : ErgodicEvidence E) : ErgodicClosed E := by
  exact And.intro Ev.ergodicDecompositionClosed
    (And.intro Ev.ergodicTheoremClosed Ev.mixingPropertyClosed)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse