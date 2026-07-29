import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure ErgodicSystem (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] [MeasurableSpace X] (D : DynamicalSystem G X) (IM : InvariantMeasure G X D) where
  ergodicity : ∀ (A : Set X), MeasurableSet A → (∀ g : G, D.timeMap g '' A = A) → IM.mu A = 0 ∨ IM.mu (Set.univ \ A) = 0

def ErgodicSystemClosed (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] [MeasurableSpace X] (D : DynamicalSystem G X) (IM : InvariantMeasure G X D) (E : ErgodicSystem G X D IM) : Prop :=
  E.ergodicity (Set.univ : Set X) (by exact MeasurableSet.univ) (λ g => by
    ext x; constructor; intro h; exact h; intro h; exact h)
  -- This is a dummy condition for illustration

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse