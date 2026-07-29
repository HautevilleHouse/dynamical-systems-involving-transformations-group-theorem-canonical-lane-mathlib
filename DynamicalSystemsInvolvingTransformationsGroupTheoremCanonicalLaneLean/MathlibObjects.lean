import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicalSystemSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TransformationGroupObject where
  space : DynamicalSystemSpace
  groupOperation : carrier → carrier → carrier
  identityElement : carrier
  inverseOperation : carrier → carrier
  groupAxioms : Prop
  actionMap : carrier → carrier → carrier
  actionAxioms : Prop
  conclusion : groupAxioms ∧ actionAxioms

structure DynamicalEndgameState where
  object : TransformationGroupObject

def DynamicalWitnessClosed (O : TransformationGroupObject) : Prop :=
  O.conclusion

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
