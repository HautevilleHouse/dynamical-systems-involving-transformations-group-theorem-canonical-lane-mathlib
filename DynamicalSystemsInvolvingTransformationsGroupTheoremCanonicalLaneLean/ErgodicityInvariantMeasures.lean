import DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.GroupActionDynamics

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure InvariantMeasurePackage (P : GroupActionPackage) where
  measure : P.M → ℝ
  measurePositive : Prop
  invariantUnderAction : Prop
  ergodic : Prop
  mixing : Prop

structure InvariantMeasureEvidence (P : GroupActionPackage) (I : InvariantMeasurePackage P) where
  measurePositiveClosed : I.measurePositive
  invariantUnderActionClosed : I.invariantUnderAction
  ergodicClosed : I.ergodic
  mixingClosed : I.mixing

def InvariantMeasureClosed (P : GroupActionPackage) (I : InvariantMeasurePackage P) : Prop :=
  I.measurePositive ∧ I.invariantUnderAction ∧ I.ergodic ∧ I.mixing

theorem invariant_measure_closed_from_evidence (P : GroupActionPackage) (I : InvariantMeasurePackage P) (E : InvariantMeasureEvidence P I) : InvariantMeasureClosed P I := by
  exact And.intro E.measurePositiveClosed (And.intro E.invariantUnderActionClosed (And.intro E.ergodicClosed E.mixingClosed))

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
