import DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean.GeodesicFlowPackage

namespace HautevilleHouse
namespace DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean

structure SymbolicDynamicsPackage {M : GeometricHyperbolicObject} {S : StableManifoldPackage} {A : AnosovFlowPackage S} (G : GeodesicFlowPackage A) where
  codingSpace : Type u
  shiftMap : Type v
  markovPartition : Prop
  topologicalMarkovChain : Prop
  entropyFormula : Prop

structure SymbolicDynamicsEvidence {M : GeometricHyperbolicObject} {S : StableManifoldPackage} {A : AnosovFlowPackage S} {G : GeodesicFlowPackage A} (D : SymbolicDynamicsPackage G) where
  markovPartitionClosed : D.markovPartition
  topologicalMarkovChainClosed : D.topologicalMarkovChain
  entropyFormulaClosed : D.entropyFormula

def SymbolicDynamicsClosed {M : GeometricHyperbolicObject} {S : StableManifoldPackage} {A : AnosovFlowPackage S} {G : GeodesicFlowPackage A} (D : SymbolicDynamicsPackage G) : Prop :=
  D.markovPartition ∧ D.topologicalMarkovChain ∧ D.entropyFormula

theorem symbolic_dynamics_closed_from_evidence {M : GeometricHyperbolicObject} {S : StableManifoldPackage} {A : AnosovFlowPackage S} {G : GeodesicFlowPackage A} (D : SymbolicDynamicsPackage G) (E : SymbolicDynamicsEvidence D) :
    SymbolicDynamicsClosed D := by
  exact And.intro E.markovPartitionClosed
    (And.intro E.topologicalMarkovChainClosed E.entropyFormulaClosed)

end DynamicalSystemsGeometricOriginHyperbolicityTheoremCanonicalLaneLean
end HautevilleHouse