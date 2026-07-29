import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.AnosovFlowPackage

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure GeodesicFlowPackage {M : GeometricHyperbolicObject} {S : StableManifoldPackage} (A : AnosovFlowPackage S) where
  riemannianMetric : Type u
  geodesicFlowDefined : Prop
  hyperbolicityFromCurvature : Prop
  negCurvatureHyperbolic : Prop
  lieGroupAction : Prop

structure GeodesicFlowEvidence {M : GeometricHyperbolicObject} {S : StableManifoldPackage} {A : AnosovFlowPackage S} (G : GeodesicFlowPackage A) where
  geodesicFlowDefinedClosed : G.geodesicFlowDefined
  hyperbolicityFromCurvatureClosed : G.hyperbolicityFromCurvature
  negCurvatureHyperbolicClosed : G.negCurvatureHyperbolic
  lieGroupActionClosed : G.lieGroupAction

def GeodesicFlowClosed {M : GeometricHyperbolicObject} {S : StableManifoldPackage} {A : AnosovFlowPackage S} (G : GeodesicFlowPackage A) : Prop :=
  G.geodesicFlowDefined ∧ G.hyperbolicityFromCurvature ∧ G.negCurvatureHyperbolic ∧ G.lieGroupAction

theorem geodesic_flow_closed_from_evidence {M : GeometricHyperbolicObject} {S : StableManifoldPackage} {A : AnosovFlowPackage S} (G : GeodesicFlowPackage A) (E : GeodesicFlowEvidence G) :
    GeodesicFlowClosed G := by
  exact And.intro E.geodesicFlowDefinedClosed
    (And.intro E.hyperbolicityFromCurvatureClosed
      (And.intro E.negCurvatureHyperbolicClosed E.lieGroupActionClosed))

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse