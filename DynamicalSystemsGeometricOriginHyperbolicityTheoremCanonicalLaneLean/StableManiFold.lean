import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure StableUnstableManiFoldPackage (H : HyperbolicityAdmittedObject) where
  stableManiFold : Type
  unstableManiFold : Type
  stableManiFoldImmersed : Prop
  unstableManiFoldImmersed : Prop
  graphRepresentation : Prop
  smoothness : Nat

def StableUnstableManiFoldClosed {H : HyperbolicityAdmittedObject} (P : StableUnstableManiFoldPackage H) : Prop :=
  P.stableManiFoldImmersed ∧ P.unstableManiFoldImmersed ∧ P.graphRepresentation

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse
