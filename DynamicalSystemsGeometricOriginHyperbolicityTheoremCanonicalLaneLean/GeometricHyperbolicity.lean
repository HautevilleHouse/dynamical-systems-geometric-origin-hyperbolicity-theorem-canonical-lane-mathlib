import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure HyperbolicityAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  diffeomorphism : space → space
  invariantSet : Set space
  hyperbolicityCondition : Prop
  hyperbolicityConditionTerm : hyperbolicityCondition

def HyperbolicityWitnessClosed (O : HyperbolicityAdmittedObject) : Prop :=
  O.hyperbolicityCondition

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse
