import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure OrbitStructurePackage where
  groupAction : Type u
  phaseSpace : Type v
  orbitStructure : Prop
  invariantMeasures : Prop
  ergodicityProperties : Prop

structure OrbitStructureEvidence (O : OrbitStructurePackage) where
  orbitStructureClosed : O.orbitStructure
  invariantMeasuresClosed : O.invariantMeasures
  ergodicityPropertiesClosed : O.ergodicityProperties

def OrbitStructureClosed (O : OrbitStructurePackage) : Prop :=
  O.orbitStructure ∧ O.invariantMeasures ∧ O.ergodicityProperties

theorem orbit_structure_closed_from_evidence (O : OrbitStructurePackage)
    (E : OrbitStructureEvidence O) : OrbitStructureClosed O := by
  exact And.intro E.orbitStructureClosed
    (And.intro E.invariantMeasuresClosed E.ergodicityPropertiesClosed)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
