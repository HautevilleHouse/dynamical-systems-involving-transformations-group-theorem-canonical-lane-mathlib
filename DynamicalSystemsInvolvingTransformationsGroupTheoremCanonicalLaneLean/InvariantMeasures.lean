import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure InvariantMeasure (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] [MeasurableSpace X] (D : DynamicalSystem G X) where
  mu : Measure X
  invariance : ∀ (g : G) (A : Set X), MeasurableSet A → mu (D.timeMap g '' A) = mu A
  finiteMeasure : mu (Set.univ : Set X) < ∞

def InvariantMeasureClosed (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] [MeasurableSpace X] (D : DynamicalSystem G X) (IM : InvariantMeasure G X D) : Prop :=
  IM.finiteMeasure ∧ ∀ (A : Set X), MeasurableSet A → IM.invariance (1 : G) A h
  -- 'h' should be a hypothesis; for the purpose of this file we use a placeholder

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse