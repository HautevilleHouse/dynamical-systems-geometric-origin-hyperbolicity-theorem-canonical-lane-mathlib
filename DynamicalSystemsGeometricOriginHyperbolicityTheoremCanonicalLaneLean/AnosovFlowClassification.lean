import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.ShadowingLemma

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure AnosovFlowClassificationPackage {H : HyperbolicCocycle} {I : InvariantManifoldsPackage H}
    {S : ShadowingProperty} (T : ShadowingProperty) where
  flowHyperbolic : Prop
  stableDistributionSmooth : Prop
  unstableDistributionSmooth : Prop
  topologicalTransitivity : Prop
  mixingProperties : Prop
  closingLemmaHolds : Prop

structure AnosovFlowClassificationEvidence {H : HyperbolicCocycle} {I : InvariantManifoldsPackage H}
    {S : ShadowingProperty} {T : ShadowingProperty} (A : AnosovFlowClassificationPackage T) where
  flowHyperbolicClosed : A.flowHyperbolic
  stableDistributionSmoothClosed : A.stableDistributionSmooth
  unstableDistributionSmoothClosed : A.unstableDistributionSmooth
  topologicalTransitivityClosed : A.topologicalTransitivity
  mixingPropertiesClosed : A.mixingProperties
  closingLemmaHoldsClosed : A.closingLemmaHolds

def AnosovFlowClassificationClosed {H : HyperbolicCocycle} {I : InvariantManifoldsPackage H}
    {S : ShadowingProperty} {T : ShadowingProperty} (A : AnosovFlowClassificationPackage T) : Prop :=
  A.flowHyperbolic ∧ A.stableDistributionSmooth ∧ A.unstableDistributionSmooth ∧
  A.topologicalTransitivity ∧ A.mixingProperties ∧ A.closingLemmaHolds

theorem anosov_flow_classification_closed_from_evidence {H : HyperbolicCocycle} {I : InvariantManifoldsPackage H}
    {S : ShadowingProperty} {T : ShadowingProperty} (A : AnosovFlowClassificationPackage T)
    (E : AnosovFlowClassificationEvidence A) : AnosovFlowClassificationClosed A := by
  exact And.intro E.flowHyperbolicClosed
    (And.intro E.stableDistributionSmoothClosed
      (And.intro E.unstableDistributionSmoothClosed
        (And.intro E.topologicalTransitivityClosed
          (And.intro E.mixingPropertiesClosed E.closingLemmaHoldsClosed))))

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse
