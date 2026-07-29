import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure DynamicalSystemPackage where
  stateSpace : Type u
  timeDomain : Type v
  flowMap : timeDomain → stateSpace → stateSpace
  smoothStructure : Prop
  invariantMeasure : Prop
  hyperbolicityCondition : Prop
end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse