import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.StableManiFold
import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.LinearizationCohomology

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

def ConstrainedHyperbolicityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hyperbolicity_endgame (A : AdmissibleClass) :
    ConstrainedHyperbolicityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse
