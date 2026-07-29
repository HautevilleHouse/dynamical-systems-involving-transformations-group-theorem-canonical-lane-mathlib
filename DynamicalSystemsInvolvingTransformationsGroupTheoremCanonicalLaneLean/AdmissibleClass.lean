import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure TransformationGroupAdmittedObject where
  G : Type u
  [group : Group G]
  M : Type v
  [topologicalSpace : TopologicalSpace M]
  action : G → M → M
  continuousAction : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : TransformationGroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TransformationGroupWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
