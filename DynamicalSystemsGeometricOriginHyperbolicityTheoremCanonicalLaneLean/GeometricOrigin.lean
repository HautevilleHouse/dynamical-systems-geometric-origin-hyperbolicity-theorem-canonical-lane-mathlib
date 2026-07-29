import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.HyperbolicSet

/-!
# Geometric Origin of Hyperbolicity Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure GeometricOriginPackage {D : DynamicalSystemPackage} {H : HyperbolicSetPackage D} where
  hyperbolicSetDerivedFromDynamics : Prop
  geometryOfPhaseSpaceDeterminesHyperbolicity : Prop
  stableUnstableBundlesContinuous : Prop
  persistenceUnderSmallPerturbation : Prop

structure GeometricOriginEvidence {D : DynamicalSystemPackage} {H : HyperbolicSetPackage D} (G : GeometricOriginPackage D H) where
  hyperbolicSetDerivedFromDynamicsClosed : G.hyperbolicSetDerivedFromDynamics
  geometryOfPhaseSpaceDeterminesHyperbolicityClosed : G.geometryOfPhaseSpaceDeterminesHyperbolicity
  stableUnstableBundlesContinuousClosed : G.stableUnstableBundlesContinuous
  persistenceUnderSmallPerturbationClosed : G.persistenceUnderSmallPerturbation

def GeometricOriginClosed {D : DynamicalSystemPackage} {H : HyperbolicSetPackage D} (G : GeometricOriginPackage D H) : Prop :=
  G.hyperbolicSetDerivedFromDynamics ∧ G.geometryOfPhaseSpaceDeterminesHyperbolicity ∧ G.stableUnstableBundlesContinuous ∧ G.persistenceUnderSmallPerturbation

theorem geometric_origin_closed_from_evidence {D : DynamicalSystemPackage} {H : HyperbolicSetPackage D} (G : GeometricOriginPackage D H) (E : GeometricOriginEvidence G) : GeometricOriginClosed G := by
  exact And.intro E.hyperbolicSetDerivedFromDynamicsClosed (And.intro E.geometryOfPhaseSpaceDeterminesHyperbolicityClosed (And.intro E.stableUnstableBundlesContinuousClosed E.persistenceUnderSmallPerturbationClosed))

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse