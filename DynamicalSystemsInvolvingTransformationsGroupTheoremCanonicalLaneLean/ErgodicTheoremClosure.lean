import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure ErgodicTheoremPackage where
  measureSpace : Type u
  measure : measureSpace → ℝ
  invariantMeasure : Prop
  ergodicDecomposition : Prop
  ergodicTheoremStatement : Prop
  invariantMeasureClosed : invariantMeasure
  ergodicDecompositionClosed : ergodicDecomposition
  ergodicTheoremStatementClosed : ergodicTheoremStatement

def ErgodicTheoremClosure (E : ErgodicTheoremPackage) : Prop :=
  E.invariantMeasure ∧ E.ergodicDecomposition ∧ E.ergodicTheoremStatement

theorem ergodic_theorem_closure_from_evidence (E : ErgodicTheoremPackage) :
    ErgodicTheoremClosure E :=
  And.intro E.invariantMeasureClosed
    (And.intro E.ergodicDecompositionClosed E.ergodicTheoremStatementClosed)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
