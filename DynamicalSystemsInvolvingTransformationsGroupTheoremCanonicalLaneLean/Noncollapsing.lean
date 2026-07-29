import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.InvariantMeasures

/-!
# Noncollapsing Package

In dynamical systems, noncollapsing refers to the property that invariant measures
do not concentrate on small sets, ensuring uniform behavior.
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure NoncollapsingPackage {G : TransformationGroupDynamics}
    (Inv : InvariantMeasuresPackage G) where
  noConcentration : Prop
  uniformLowerBound : Prop
  entropyControl : Prop

structure NoncollapsingEvidence {G : TransformationGroupDynamics}
    {Inv : InvariantMeasuresPackage G} (N : NoncollapsingPackage Inv) where
  noConcentrationClosed : N.noConcentration
  uniformLowerBoundClosed : N.uniformLowerBound
  entropyControlClosed : N.entropyControl

def NoncollapsingClosed {G : TransformationGroupDynamics}
    {Inv : InvariantMeasuresPackage G} (N : NoncollapsingPackage Inv) : Prop :=
  N.noConcentration ∧ N.uniformLowerBound ∧ N.entropyControl

theorem noncollapsing_closed_from_evidence
    {G : TransformationGroupDynamics} {Inv : InvariantMeasuresPackage G}
    (N : NoncollapsingPackage Inv) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.noConcentrationClosed
    (And.intro E.uniformLowerBoundClosed E.entropyControlClosed)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
