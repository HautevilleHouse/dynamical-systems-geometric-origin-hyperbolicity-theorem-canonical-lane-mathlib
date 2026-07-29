import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure EquilibriumStructuralStabilityPackage where
  equilibriumSet : Type
  transverseIntersection : Prop
  heteroclinicConnectionControl : Prop
  omegaLimitSetStructured : Prop
  morrisCocycleCondition : Prop

structure EquilibriumStructuralStabilityEvidence
    (E : EquilibriumStructuralStabilityPackage) where
  transverseIntersectionClosed : E.transverseIntersection
  heteroclinicConnectionControlClosed : E.heteroclinicConnectionControl
  omegaLimitSetStructuredClosed : E.omegaLimitSetStructured
  morrisCocycleConditionClosed : E.morrisCocycleCondition

def EquilibriumStructuralStabilityClosed
    (E : EquilibriumStructuralStabilityPackage) : Prop :=
  E.transverseIntersection ∧ E.heteroclinicConnectionControl ∧
  E.omegaLimitSetStructured ∧ E.morrisCocycleCondition

theorem equilibrium_structural_stability_closed_from_evidence
    (E : EquilibriumStructuralStabilityPackage)
    (Ev : EquilibriumStructuralStabilityEvidence E) :
    EquilibriumStructuralStabilityClosed E := by
  exact And.intro Ev.transverseIntersectionClosed
    (And.intro Ev.heteroclinicConnectionControlClosed
      (And.intro Ev.omegaLimitSetStructuredClosed Ev.morrisCocycleConditionClosed))

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse