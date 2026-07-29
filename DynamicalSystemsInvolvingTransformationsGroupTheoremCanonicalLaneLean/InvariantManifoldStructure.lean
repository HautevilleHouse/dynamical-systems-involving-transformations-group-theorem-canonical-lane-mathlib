import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure InvariantManifoldStructurePackage where
  invariantSet : Type u
  dynamicsRestricted : Prop
  manifoldSmoothness : Prop
  stabilityProperties : Prop

structure InvariantManifoldStructureEvidence
    (I : InvariantManifoldStructurePackage) where
  dynamicsRestrictedClosed : I.dynamicsRestricted
  manifoldSmoothnessClosed : I.manifoldSmoothness
  stabilityPropertiesClosed : I.stabilityProperties

def InvariantManifoldStructureClosed
    (I : InvariantManifoldStructurePackage) : Prop :=
  I.dynamicsRestricted ∧ I.manifoldSmoothness ∧ I.stabilityProperties

theorem invariant_manifold_structure_closed_from_evidence
    (I : InvariantManifoldStructurePackage)
    (E : InvariantManifoldStructureEvidence I) :
    InvariantManifoldStructureClosed I := by
  exact And.intro E.dynamicsRestrictedClosed
    (And.intro E.manifoldSmoothnessClosed E.stabilityPropertiesClosed)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
