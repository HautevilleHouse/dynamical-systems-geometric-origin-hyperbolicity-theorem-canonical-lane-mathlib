import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure HyperbolicPersistencePackage where
  invariantSet : Type
  persistenceUnderPerturbation : Prop
  stableManifoldExists : Prop
  stableIntersectionTransverse : Prop
  shadowingProperty : Prop

structure HyperbolicPersistenceEvidence (H : HyperbolicPersistencePackage) where
  persistenceUnderPerturbationClosed : H.persistenceUnderPerturbation
  stableManifoldExistsClosed : H.stableManifoldExists
  stableIntersectionTransverseClosed : H.stableIntersectionTransverse
  shadowingPropertyClosed : H.shadowingProperty

def HyperbolicPersistenceClosed (H : HyperbolicPersistencePackage) : Prop :=
  H.persistenceUnderPerturbation ∧ H.stableManifoldExists ∧
  H.stableIntersectionTransverse ∧ H.shadowingProperty

theorem hyperbolic_persistence_closed_from_evidence
    (H : HyperbolicPersistencePackage) (E : HyperbolicPersistenceEvidence H) :
    HyperbolicPersistenceClosed H := by
  exact And.intro E.persistenceUnderPerturbationClosed
    (And.intro E.stableManifoldExistsClosed
      (And.intro E.stableIntersectionTransverseClosed E.shadowingPropertyClosed))

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse