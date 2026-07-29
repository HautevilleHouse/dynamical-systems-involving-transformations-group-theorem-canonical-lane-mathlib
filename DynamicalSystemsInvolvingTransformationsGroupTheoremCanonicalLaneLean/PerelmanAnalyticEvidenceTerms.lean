import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.DynamicalAnalyticProof

/-!
# Dynamical Analytic Evidence Terms

This module exposes the proof terms carried by each analytic certificate.
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure GroupActionEvidenceTerms {G : TransformationGroupDynamics}
    (C : GroupActionAnalyticCertificate G) where
  continuityAction : C.continuityAction
  groupHomomorphismAction : C.groupHomomorphismAction
  orbitStructure : C.orbitStructure
  invariantSets : C.invariantSets
  actionClosed : TransformationGroupDynamicsClosed G

def GroupActionAnalyticCertificate.evidenceTerms {G : TransformationGroupDynamics}
    (C : GroupActionAnalyticCertificate G) : GroupActionEvidenceTerms C :=
  {
    continuityAction := C.continuityActionClosed
    groupHomomorphismAction := C.groupHomomorphismActionClosed
    orbitStructure := C.orbitStructureClosed
    invariantSets := C.invariantSetsClosed
    actionClosed := transformation_group_dynamics_closed_from_evidence G C.actionEvidence
  }

structure InvariantMeasureEvidenceTerms {G : TransformationGroupDynamics}
    {Inv : InvariantMeasuresPackage G} (C : InvariantMeasureAnalyticCertificate Inv) where
  measurePreservation : C.measurePreservation
  ergodicity : C.ergodicity
  entropyDefined : C.entropyDefined
  mixingProperty : C.mixingProperty
  measureClosed : InvariantMeasuresClosed Inv

def InvariantMeasureAnalyticCertificate.evidenceTerms {G : TransformationGroupDynamics}
    {Inv : InvariantMeasuresPackage G} (C : InvariantMeasureAnalyticCertificate Inv) :
    InvariantMeasureEvidenceTerms C :=
  {
    measurePreservation := C.measurePreservationClosed
    ergodicity := C.ergodicityClosed
    entropyDefined := C.entropyDefinedClosed
    mixingProperty := C.mixingPropertyClosed
    measureClosed := invariant_measures_closed_from_evidence Inv C.measureEvidence
  }

structure NoncollapsingEvidenceTerms {G : TransformationGroupDynamics}
    {Inv : InvariantMeasuresPackage G} {N : NoncollapsingPackage Inv}
    (C : NoncollapsingAnalyticCertificate N) where
  noConcentration : C.noConcentration
  uniformLowerBound : C.uniformLowerBound
  entropyControl : C.entropyControl
  noncollapsingClosed : NoncollapsingClosed N

def NoncollapsingAnalyticCertificate.evidenceTerms {G : TransformationGroupDynamics}
    {Inv : InvariantMeasuresPackage G} {N : NoncollapsingPackage Inv}
    (C : NoncollapsingAnalyticCertificate N) : NoncollapsingEvidenceTerms C :=
  {
    noConcentration := C.noConcentrationClosed
    uniformLowerBound := C.uniformLowerBoundClosed
    entropyControl := C.entropyControlClosed
    noncollapsingClosed := noncollapsing_closed_from_evidence N C.noncollapsingEvidence
  }

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
