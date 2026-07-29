import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure ErgodicDecompositionPackage where
  measureSpace : Type u
  transformationGroup : Prop
  ergodicDecomposition : Prop
  invariantMeasuresCharacterized : Prop

structure ErgodicDecompositionEvidence (E : ErgodicDecompositionPackage) where
  ergodicDecompositionClosed : E.ergodicDecomposition
  invariantMeasuresCharacterizedClosed : E.invariantMeasuresCharacterized

def ErgodicDecompositionClosed (E : ErgodicDecompositionPackage) : Prop :=
  E.ergodicDecomposition ∧ E.invariantMeasuresCharacterized

theorem ergodic_decomposition_closed_from_evidence
    (E : ErgodicDecompositionPackage) (Ev : ErgodicDecompositionEvidence E) :
    ErgodicDecompositionClosed E := by
  exact And.intro Ev.ergodicDecompositionClosed Ev.invariantMeasuresCharacterizedClosed

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
