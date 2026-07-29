import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.InvariantManifolds

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure ShadowingProperty {H : HyperbolicCocycle} {I : InvariantManifoldsPackage H} where
  epsilonPseudoOrbitTracing : Prop
  shadowingDistanceEstimate : Prop
  linearizationErrorControlled : Prop
  persistenceUnderPerturbation : Prop

structure ShadowingEvidence {H : HyperbolicCocycle} {I : InvariantManifoldsPackage H} (S : ShadowingProperty) where
  epsilonPseudoOrbitTracingClosed : S.epsilonPseudoOrbitTracing
  shadowingDistanceEstimateClosed : S.shadowingDistanceEstimate
  linearizationErrorControlledClosed : S.linearizationErrorControlled
  persistenceUnderPerturbationClosed : S.persistenceUnderPerturbation

def ShadowingClosed {H : HyperbolicCocycle} {I : InvariantManifoldsPackage H} (S : ShadowingProperty) : Prop :=
  S.epsilonPseudoOrbitTracing ∧ S.shadowingDistanceEstimate ∧
  S.linearizationErrorControlled ∧ S.persistenceUnderPerturbation

theorem shadowing_closed_from_evidence {H : HyperbolicCocycle} {I : InvariantManifoldsPackage H}
    (S : ShadowingProperty) (E : ShadowingEvidence S) : ShadowingClosed S := by
  exact And.intro E.epsilonPseudoOrbitTracingClosed
    (And.intro E.shadowingDistanceEstimateClosed
      (And.intro E.linearizationErrorControlledClosed E.persistenceUnderPerturbationClosed))

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse
