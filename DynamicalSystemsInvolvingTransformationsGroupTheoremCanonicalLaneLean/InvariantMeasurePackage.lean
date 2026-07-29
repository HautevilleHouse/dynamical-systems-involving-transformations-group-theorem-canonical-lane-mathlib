import DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.TransformationGroupStructure

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure InvariantMeasurePackage {T : TransformationGroupPackage} where
  measure : DynamicalAdmittedObject.stateSpace → ℝ
  invariantUnderAction : Prop
  finiteMeasure : Prop

structure InvariantMeasureEvidence {T : TransformationGroupPackage}
    (M : InvariantMeasurePackage T) where
  invariantUnderActionClosed : M.invariantUnderAction
  finiteMeasureClosed : M.finiteMeasure

def InvariantMeasureClosed {T : TransformationGroupPackage}
    (M : InvariantMeasurePackage T) : Prop :=
  M.invariantUnderAction ∧ M.finiteMeasure

theorem invariant_measure_closed_from_evidence {T : TransformationGroupPackage}
    (M : InvariantMeasurePackage T) (E : InvariantMeasureEvidence M) :
    InvariantMeasureClosed M := by
  exact And.intro E.invariantUnderActionClosed E.finiteMeasureClosed

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse