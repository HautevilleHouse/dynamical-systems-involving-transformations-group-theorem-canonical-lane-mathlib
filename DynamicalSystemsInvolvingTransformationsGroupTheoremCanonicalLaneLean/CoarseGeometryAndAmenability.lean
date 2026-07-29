import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure CoarseGeometryAndAmenabilityPackage where
  groupMetric : Type u
  coarseGeometry : Prop
  amenabilityProperties : Prop
  growthTypes : Prop
  isoperimetricInequalities : Prop

structure CoarseGeometryAndAmenabilityEvidence
    (C : CoarseGeometryAndAmenabilityPackage) where
  coarseGeometryClosed : C.coarseGeometry
  amenabilityPropertiesClosed : C.amenabilityProperties
  growthTypesClosed : C.growthTypes
  isoperimetricInequalitiesClosed : C.isoperimetricInequalities

def CoarseGeometryAndAmenabilityClosed
    (C : CoarseGeometryAndAmenabilityPackage) : Prop :=
  C.coarseGeometry ∧ C.amenabilityProperties ∧ C.growthTypes ∧ C.isoperimetricInequalities

theorem coarse_geometry_and_amenability_closed_from_evidence
    (C : CoarseGeometryAndAmenabilityPackage)
    (E : CoarseGeometryAndAmenabilityEvidence C) :
    CoarseGeometryAndAmenabilityClosed C := by
  exact And.intro E.coarseGeometryClosed
    (And.intro E.amenabilityPropertiesClosed
      (And.intro E.growthTypesClosed E.isoperimetricInequalitiesClosed))

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
