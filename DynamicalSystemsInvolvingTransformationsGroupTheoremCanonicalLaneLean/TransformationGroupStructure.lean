import DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.DynamicalAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure TransformationGroupPackage where
  group : Type u
  action : group → DynamicalAdmittedObject.stateSpace → DynamicalAdmittedObject.stateSpace
  continuity : Prop
  measurability : Prop
  groupLaw : Prop

structure TransformationGroupEvidence (T : TransformationGroupPackage) where
  continuityClosed : T.continuity
  measurabilityClosed : T.measurability
  groupLawClosed : T.groupLaw

def TransformationGroupClosed (T : TransformationGroupPackage) : Prop :=
  T.continuity ∧ T.measurability ∧ T.groupLaw

theorem transformation_group_closed_from_evidence (T : TransformationGroupPackage)
    (E : TransformationGroupEvidence T) : TransformationGroupClosed T := by
  exact And.intro E.continuityClosed (And.intro E.measurabilityClosed E.groupLawClosed)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse