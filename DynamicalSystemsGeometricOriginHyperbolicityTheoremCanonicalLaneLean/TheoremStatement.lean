import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := "Dynamical Systems Geometric Origin Hyperbolicity Theorem",
    theoremObject := "DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean",
    classicalBoundary := "classical boundary carried",
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "manifold_constrained",
    carriedRemainder := "classical source boundary carried by theoremBoundaryOpen"
  }

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse