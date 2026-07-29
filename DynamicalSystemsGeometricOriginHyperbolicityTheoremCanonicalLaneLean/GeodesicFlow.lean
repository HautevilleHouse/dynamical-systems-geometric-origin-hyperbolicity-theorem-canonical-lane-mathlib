import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Dynamics.Flow

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure GeodesicFlowPackage where
  tangentBundle : Type
  metric : Type
  exponentialMap : Type
  hamiltonianFlow : Prop
  symplecticStructure : Prop
  geodesicFlowComplete : Prop

structure GeodesicFlowEvidence (G : GeodesicFlowPackage) where
  hamiltonianFlowClosed : G.hamiltonianFlow
  symplecticStructureClosed : G.symplecticStructure
  geodesicFlowCompleteClosed : G.geodesicFlowComplete

def GeodesicFlowClosed (G : GeodesicFlowPackage) : Prop :=
  G.hamiltonianFlow ∧ G.symplecticStructure ∧ G.geodesicFlowComplete

theorem geodesic_flow_closed_from_evidence (G : GeodesicFlowPackage)
    (E : GeodesicFlowEvidence G) : GeodesicFlowClosed G := by
  exact And.intro E.hamiltonianFlowClosed
    (And.intro E.symplecticStructureClosed E.geodesicFlowCompleteClosed)

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse