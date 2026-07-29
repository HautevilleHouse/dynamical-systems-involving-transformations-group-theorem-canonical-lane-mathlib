import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.TransformationsGroupAction

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure OrbitStabilizerBridge (A : TransformationsGroupAction) where
  orbitSpace : Type u
  stabilizerSubgroup : Prop
  orbitDecomposition : Prop
  orbitSpaceContinuous : Prop
  stabilizerClosed : Prop
  orbitDecompositionClosed : orbitDecomposition
  orbitSpaceContinuousClosed : orbitSpaceContinuous
  stabilizerClosedClosed : stabilizerClosed

def OrbitStabilizerBridgeClosed (A : TransformationsGroupAction) (B : OrbitStabilizerBridge A) : Prop :=
  B.orbitDecomposition ∧ B.orbitSpaceContinuous ∧ B.stabilizerClosed

theorem orbit_stabilizer_bridge_closed_from_evidence (A : TransformationsGroupAction)
    (B : OrbitStabilizerBridge A) (E : B.orbitDecomposition ∧ B.orbitSpaceContinuous ∧ B.stabilizerClosed) :
    OrbitStabilizerBridgeClosed A B :=
  E

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
