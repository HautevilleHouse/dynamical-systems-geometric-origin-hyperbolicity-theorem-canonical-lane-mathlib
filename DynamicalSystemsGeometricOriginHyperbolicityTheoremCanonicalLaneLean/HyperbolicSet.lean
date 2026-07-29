import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.DynamicalSystemsFoundation

/-!
# Hyperbolic Set Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure HyperbolicSetPackage {D : DynamicalSystemPackage} where
  invariantSet : D.phaseSpace → Prop
  hyperbolicStructure : Prop
  stableManifold : Prop
  unstableManifold : Prop
  shadowingProperty : Prop

structure HyperbolicSetEvidence {D : DynamicalSystemPackage} (H : HyperbolicSetPackage D) where
  invariantSetClosed : H.invariantSet
  hyperbolicStructureClosed : H.hyperbolicStructure
  stableManifoldClosed : H.stableManifold
  unstableManifoldClosed : H.unstableManifold
  shadowingPropertyClosed : H.shadowingProperty

def HyperbolicSetClosed {D : DynamicalSystemPackage} (H : HyperbolicSetPackage D) : Prop :=
  H.invariantSet ∧ H.hyperbolicStructure ∧ H.stableManifold ∧ H.unstableManifold ∧ H.shadowingProperty

theorem hyperbolic_set_closed_from_evidence {D : DynamicalSystemPackage} (H : HyperbolicSetPackage D) (E : HyperbolicSetEvidence H) : HyperbolicSetClosed H := by
  exact And.intro E.invariantSetClosed (And.intro E.hyperbolicStructureClosed (And.intro E.stableManifoldClosed (And.intro E.unstableManifoldClosed E.shadowingPropertyClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse