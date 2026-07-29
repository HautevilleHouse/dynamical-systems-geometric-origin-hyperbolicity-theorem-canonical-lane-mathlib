import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure HyperbolicCocycle where
  baseSpace : Type u
  fiber : Type v
  dynamics : baseSpace → baseSpace
  cocycle : baseSpace → (fiber → fiber)
  hyperbolicSplitting : Prop
  uniformContraction : Prop
  uniformExpansion : Prop
  splittingInvariance : Prop
  cocycleRegularity : Prop

structure HyperbolicCocycleEvidence (H : HyperbolicCocycle) where
  hyperbolicSplittingClosed : H.hyperbolicSplitting
  uniformContractionClosed : H.uniformContraction
  uniformExpansionClosed : H.uniformExpansion
  splittingInvarianceClosed : H.splittingInvariance
  cocycleRegularityClosed : H.cocycleRegularity

def HyperbolicCocycleClosed (H : HyperbolicCocycle) : Prop :=
  H.hyperbolicSplitting ∧ H.uniformContraction ∧ H.uniformExpansion ∧ H.splittingInvariance ∧ H.cocycleRegularity

theorem hyperbolic_cocycle_closed_from_evidence (H : HyperbolicCocycle) (E : HyperbolicCocycleEvidence H) : HyperbolicCocycleClosed H := by
  exact And.intro E.hyperbolicSplittingClosed (And.intro E.uniformContractionClosed (And.intro E.uniformExpansionClosed (And.intro E.splittingInvarianceClosed E.cocycleRegularityClosed)))

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse
