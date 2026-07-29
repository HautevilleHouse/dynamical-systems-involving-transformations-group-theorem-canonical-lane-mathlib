import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure TransformationsGroupClassificationPackage where
  groupType : Type u
  representationAction : Prop
  classificationCompleted : Prop
  discreteContinuousCases : Prop

structure TransformationsGroupClassificationEvidence
    (T : TransformationsGroupClassificationPackage) where
  representationActionClosed : T.representationAction
  classificationCompletedClosed : T.classificationCompleted
  discreteContinuousCasesClosed : T.discreteContinuousCases

def TransformationsGroupClassificationClosed
    (T : TransformationsGroupClassificationPackage) : Prop :=
  T.representationAction ∧ T.classificationCompleted ∧ T.discreteContinuousCases

theorem transformations_group_classification_closed_from_evidence
    (T : TransformationsGroupClassificationPackage)
    (E : TransformationsGroupClassificationEvidence T) :
    TransformationsGroupClassificationClosed T := by
  exact And.intro E.representationActionClosed
    (And.intro E.classificationCompletedClosed E.discreteContinuousCasesClosed)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
