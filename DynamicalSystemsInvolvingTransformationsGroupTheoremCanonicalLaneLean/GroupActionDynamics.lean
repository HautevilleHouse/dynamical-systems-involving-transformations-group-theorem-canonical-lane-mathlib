import DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure GroupActionPackage where
  G : Type u
  [group : Group G]
  M : Type v
  [topologicalSpace : TopologicalSpace M]
  action : G → M → M
  continuousAction : Prop
  orbitSpace : Type w
  orbitSpaceTopology : TopologicalSpace orbitSpace
  orbitSpaceHausdorff : Prop
  actionIsProper : Prop
  actionIsFree : Prop

structure GroupActionEvidence (P : GroupActionPackage) where
  continuousActionClosed : P.continuousAction
  orbitSpaceHausdorffClosed : P.orbitSpaceHausdorff
  actionIsProperClosed : P.actionIsProper
  actionIsFreeClosed : P.actionIsFree

def GroupActionClosed (P : GroupActionPackage) : Prop :=
  P.continuousAction ∧ P.orbitSpaceHausdorff ∧ P.actionIsProper ∧ P.actionIsFree

theorem group_action_closed_from_evidence (P : GroupActionPackage) (E : GroupActionEvidence P) : GroupActionClosed P := by
  exact And.intro E.continuousActionClosed (And.intro E.orbitSpaceHausdorffClosed (And.intro E.actionIsProperClosed E.actionIsFreeClosed))

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
