import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.GeometricOrigin

/-!
# Stable Manifold Theorem Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure StableManifoldPackage {D : DynamicalSystemPackage} {H : HyperbolicSetPackage D} {G : GeometricOriginPackage D H} where
  stableManifoldExists : Prop
  tangentSpaceIsomorphism : Prop
  exponentialContraction : Prop
  regularity : Prop

structure StableManifoldEvidence {D : DynamicalSystemPackage} {H : HyperbolicSetPackage D} {G : GeometricOriginPackage D H} (S : StableManifoldPackage D H G) where
  stableManifoldExistsClosed : S.stableManifoldExists
  tangentSpaceIsomorphismClosed : S.tangentSpaceIsomorphism
  exponentialContractionClosed : S.exponentialContraction
  regularityClosed : S.regularity

def StableManifoldClosed {D : DynamicalSystemPackage} {H : HyperbolicSetPackage D} {G : GeometricOriginPackage D H} (S : StableManifoldPackage D H G) : Prop :=
  S.stableManifoldExists ∧ S.tangentSpaceIsomorphism ∧ S.exponentialContraction ∧ S.regularity

theorem stable_manifold_closed_from_evidence {D : DynamicalSystemPackage} {H : HyperbolicSetPackage D} {G : GeometricOriginPackage D H} (S : StableManifoldPackage D H G) (E : StableManifoldEvidence S) : StableManifoldClosed S := by
  exact And.intro E.stableManifoldExistsClosed (And.intro E.tangentSpaceIsomorphismClosed (And.intro E.exponentialContractionClosed E.regularityClosed))

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse