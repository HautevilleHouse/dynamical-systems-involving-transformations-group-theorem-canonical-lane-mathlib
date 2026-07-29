import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure RecurrenceData (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] (D : DynamicalSystem G X) where
  recurrentPoints : Set X
  poincareRecurrence : ∀ x : X, x ∈ recurrentPoints → ∃ g : G, g ≠ 1 ∧ D.timeMap g x ∈ recurrentPoints
  topologicalTransitivity : ∀ (U V : Set X), IsOpen U → IsOpen V → U.Nonempty → V.Nonempty → ∃ g : G, D.timeMap g '' U ∩ V ≠ ∅

def RecurrenceClosed (G : Type u) [Group G] (X : Type v) [TopologicalSpace X] (D : DynamicalSystem G X) (R : RecurrenceData G X D) : Prop :=
  R.topologicalTransitivity (Set.univ : Set X) (Set.univ : Set X) (by exact isOpen_univ) (by exact isOpen_univ) (by trivial) (by trivial)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse