import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure TransformationsGroupAction where
  group : Type u
  groupMul : group → group → group
  groupInv : group → group
  groupOne : group
  space : Type v
  topology : TopologicalSpace space
  action : group → space → space
  actionContinuous : Prop
  actionGroupLaw : Prop
  actionContinuousClosed : actionContinuous
  actionGroupLawClosed : actionGroupLaw

structure TransformationsGroupActionEvidence (A : TransformationsGroupAction) where
  actionContinuousClosed : A.actionContinuous
  actionGroupLawClosed : A.actionGroupLaw

def TransformationsGroupActionClosed (A : TransformationsGroupAction) : Prop :=
  A.actionContinuous ∧ A.actionGroupLaw

theorem transformations_group_action_closed_from_evidence (A : TransformationsGroupAction)
    (E : TransformationsGroupActionEvidence A) : TransformationsGroupActionClosed A :=
  And.intro E.actionContinuousClosed E.actionGroupLawClosed

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
