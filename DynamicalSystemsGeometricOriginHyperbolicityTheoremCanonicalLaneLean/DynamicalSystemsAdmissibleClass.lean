import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure GeometricHyperbolicObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  hyperbolicStructure : Prop
  uniformHyperbolicity : Prop
  geometricOrigin : Prop
  conclusion : hyperbolicStructure ∧ uniformHyperbolicity ∧ geometricOrigin

structure AdmissibleClass where
  object : GeometricHyperbolicObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse