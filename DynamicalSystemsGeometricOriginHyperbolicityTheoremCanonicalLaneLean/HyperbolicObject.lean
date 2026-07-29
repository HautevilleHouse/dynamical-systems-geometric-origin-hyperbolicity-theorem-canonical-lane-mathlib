import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure HyperbolicObject where
  carrier : Type
  topology : TopologicalSpace carrier
  manifold : Prop
  metric : Prop
  geodesicCompactness : Prop
  uniformHyperbolicity : Prop
  conclusion : uniformHyperbolicity

structure HyperbolicEndgameState where
  object : HyperbolicObject

def HyperbolicWitnessClosed (O : HyperbolicObject) : Prop :=
  O.uniformHyperbolicity

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse