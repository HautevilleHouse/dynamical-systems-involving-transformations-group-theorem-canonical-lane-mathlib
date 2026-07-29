import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean.DynamicalRoute

/-!
# Dynamical Analytic Proof Route

This module refines the dynamical route into named analytic proof certificates.
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean

structure GroupActionAnalyticCertificate (G : TransformationGroupDynamics) where
  continuityAction : Prop
  groupHomomorphismAction : Prop
  orbitStructure : Prop
  invariantSets : Prop
  continuityActionClosed : continuityAction
  groupHomomorphismActionClosed : groupHomomorphismAction
  orbitStructureClosed : orbitStructure
  invariantSetsClosed : invariantSets
  actionEvidence : TransformationGroupDynamicsEvidence G

def GroupActionAnalyticCertificateClosed {G : TransformationGroupDynamics}
    (C : GroupActionAnalyticCertificate G) : Prop :=
  C.continuityAction ∧
  C.groupHomomorphismAction ∧
  C.orbitStructure ∧
  C.invariantSets ∧
  TransformationGroupDynamicsClosed G

theorem group_action_analytic_certificate_closed
    {G : TransformationGroupDynamics} (C : GroupActionAnalyticCertificate G) :
    GroupActionAnalyticCertificateClosed C := by
  exact And.intro C.continuityActionClosed
    (And.intro C.groupHomomorphismActionClosed
      (And.intro C.orbitStructureClosed
        (And.intro C.invariantSetsClosed
          (transformation_group_dynamics_closed_from_evidence G C.actionEvidence))))

structure InvariantMeasureAnalyticCertificate {G : TransformationGroupDynamics}
    (Inv : InvariantMeasuresPackage G) where
  measurePreservation : Prop
  ergodicity : Prop
  entropyDefined : Prop
  mixingProperty : Prop
  measurePreservationClosed : measurePreservation
  ergodicityClosed : ergodicity
  entropyDefinedClosed : entropyDefined
  mixingPropertyClosed : mixingProperty
  measureEvidence : InvariantMeasuresEvidence Inv

def InvariantMeasureAnalyticCertificateClosed {G : TransformationGroupDynamics}
    {Inv : InvariantMeasuresPackage G} (C : InvariantMeasureAnalyticCertificate Inv) : Prop :=
  C.measurePreservation ∧
  C.ergodicity ∧
  C.entropyDefined ∧
  C.mixingProperty ∧
  InvariantMeasuresClosed Inv

theorem invariant_measure_analytic_certificate_closed
    {G : TransformationGroupDynamics} {Inv : InvariantMeasuresPackage G}
    (C : InvariantMeasureAnalyticCertificate Inv) :
    InvariantMeasureAnalyticCertificateClosed C := by
  exact And.intro C.measurePreservationClosed
    (And.intro C.ergodicityClosed
      (And.intro C.entropyDefinedClosed
        (And.intro C.mixingPropertyClosed
          (invariant_measures_closed_from_evidence Inv C.measureEvidence))))

structure NoncollapsingAnalyticCertificate {G : TransformationGroupDynamics}
    {Inv : InvariantMeasuresPackage G} (N : NoncollapsingPackage Inv) where
  noConcentration : Prop
  uniformLowerBound : Prop
  entropyControl : Prop
  noConcentrationClosed : noConcentration
  uniformLowerBoundClosed : uniformLowerBound
  entropyControlClosed : entropyControl
  noncollapsingEvidence : NoncollapsingEvidence N

def NoncollapsingAnalyticCertificateClosed {G : TransformationGroupDynamics}
    {Inv : InvariantMeasuresPackage G} {N : NoncollapsingPackage Inv}
    (C : NoncollapsingAnalyticCertificate N) : Prop :=
  C.noConcentration ∧
  C.uniformLowerBound ∧
  C.entropyControl ∧
  NoncollapsingClosed N

theorem noncollapsing_analytic_certificate_closed
    {G : TransformationGroupDynamics} {Inv : InvariantMeasuresPackage G}
    {N : NoncollapsingPackage Inv} (C : NoncollapsingAnalyticCertificate N) :
    NoncollapsingAnalyticCertificateClosed C := by
  exact And.intro C.noConcentrationClosed
    (And.intro C.uniformLowerBoundClosed
      (And.intro C.entropyControlClosed
        (noncollapsing_closed_from_evidence N C.noncollapsingEvidence)))

end DynamicalSystemsInvolvingTransformationsGroupTheoremCanonicalLaneLean
end HautevilleHouse
