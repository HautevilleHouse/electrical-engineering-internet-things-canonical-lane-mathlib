import ElectricalEngineeringInternetThingsCanonicalLaneLean.NetworkProtocolPDE

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure EnergyEntropy where
  deviceId : String
  energyConsumed : Nat
  timeElapsed : Nat
  entropyMeasure : Float
  monotonicity : Prop

structure EnergyEntropyEvidence (E : EnergyEntropy) where
  monotonicityClosed : E.monotonicity
  entropyPositive : E.entropyMeasure > 0.0

def EnergyEntropyClosed (E : EnergyEntropy) : Prop :=
  E.monotonicity ∧ E.entropyMeasure > 0.0

theorem energy_entropy_closed_from_evidence (E : EnergyEntropy) (Ev : EnergyEntropyEvidence E) :
    EnergyEntropyClosed E := by
  exact And.intro Ev.monotonicityClosed Ev.entropyPositive

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse