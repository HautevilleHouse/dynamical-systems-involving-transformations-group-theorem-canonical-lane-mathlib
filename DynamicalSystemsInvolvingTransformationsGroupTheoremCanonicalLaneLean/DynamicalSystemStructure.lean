import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure DynamicalSystem (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] where
  group : TransformationsGroup G X
  timeMap : G → X → X
  compatibility : ∀ g : G, ∀ x : X, timeMap g x = group.action g x
  flowProperty : ∀ g h : G, ∀ x : X, timeMap (g * h) x = timeMap g (timeMap h x)
  continuity : Continuous (λ (p : G × X) => timeMap p.1 p.2)

def DynamicalSystemClosed (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] (D : DynamicalSystem G X) : Prop :=
  D.flowProperty (1 : G) (1 : G) (1 : X) ∧ D.continuity

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse