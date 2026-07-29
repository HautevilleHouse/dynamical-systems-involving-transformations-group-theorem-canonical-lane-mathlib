import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure TransformationsGroup (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] where
  action : G → X → X
  continuousEachG : ∀ g : G, Continuous (action g)
  groupActionLaws : ∀ g h : G, ∀ x : X, action (g * h) x = action g (action h x)
  identityAction : ∀ x : X, action 1 x = x

def TransformationsGroupClosed (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] (T : TransformationsGroup G X) : Prop :=
  T.continuousEachG (1 : G) ∧ T.identityAction (1 : X) ∧ ∀ (g h : G) (x : X), T.groupActionLaws g h x

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse