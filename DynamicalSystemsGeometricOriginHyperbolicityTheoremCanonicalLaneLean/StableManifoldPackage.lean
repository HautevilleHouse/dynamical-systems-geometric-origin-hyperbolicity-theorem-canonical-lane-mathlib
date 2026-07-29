import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.DynamicalSystemsAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure StableManifoldPackage where
  hyperbolicSet : Type u
  stableManifold : Type v
  unstableManifold : Type w
  existsStableManifold : Prop
  existsUnstableManifold : Prop
  tangentBundleSplitting : Prop

structure StableManifoldEvidence (S : StableManifoldPackage) where
  existsStableManifoldClosed : S.existsStableManifold
  existsUnstableManifoldClosed : S.existsUnstableManifold
  tangentBundleSplittingClosed : S.tangentBundleSplitting

def StableManifoldClosed (S : StableManifoldPackage) : Prop :=
  S.existsStableManifold ∧ S.existsUnstableManifold ∧ S.tangentBundleSplitting

theorem stable_manifold_closed_from_evidence (S : StableManifoldPackage) (E : StableManifoldEvidence S) :
    StableManifoldClosed S := by
  exact And.intro E.existsStableManifoldClosed
    (And.intro E.existsUnstableManifoldClosed E.tangentBundleSplittingClosed)

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse