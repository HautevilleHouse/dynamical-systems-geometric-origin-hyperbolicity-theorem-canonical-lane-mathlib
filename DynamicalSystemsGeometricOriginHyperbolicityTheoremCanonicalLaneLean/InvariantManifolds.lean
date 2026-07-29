import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.HyperbolicCocycle

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure InvariantManifoldsPackage (H : HyperbolicCocycle) where
  stableManifoldExists : Prop
  unstableManifoldExists : Prop
  tangentSpaceDecomposition : Prop
  localStableInjectiveImmersion : Prop
  localUnstableInjectiveImmersion : Prop
  invariantUnderDynamics : Prop

structure InvariantManifoldsEvidence {H : HyperbolicCocycle} (I : InvariantManifoldsPackage H) where
  stableManifoldExistsClosed : I.stableManifoldExists
  unstableManifoldExistsClosed : I.unstableManifoldExists
  tangentSpaceDecompositionClosed : I.tangentSpaceDecomposition
  localStableInjectiveImmersionClosed : I.localStableInjectiveImmersion
  localUnstableInjectiveImmersionClosed : I.localUnstableInjectiveImmersion
  invariantUnderDynamicsClosed : I.invariantUnderDynamics

def InvariantManifoldsClosed {H : HyperbolicCocycle} (I : InvariantManifoldsPackage H) : Prop :=
  I.stableManifoldExists ∧ I.unstableManifoldExists ∧
  I.tangentSpaceDecomposition ∧ I.localStableInjectiveImmersion ∧
  I.localUnstableInjectiveImmersion ∧ I.invariantUnderDynamics

theorem invariant_manifolds_closed_from_evidence {H : HyperbolicCocycle} (I : InvariantManifoldsPackage H)
    (E : InvariantManifoldsEvidence I) : InvariantManifoldsClosed I := by
  exact And.intro E.stableManifoldExistsClosed
    (And.intro E.unstableManifoldExistsClosed
      (And.intro E.tangentSpaceDecompositionClosed
        (And.intro E.localStableInjectiveImmersionClosed
          (And.intro E.localUnstableInjectiveImmersionClosed E.invariantUnderDynamicsClosed))))

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse
