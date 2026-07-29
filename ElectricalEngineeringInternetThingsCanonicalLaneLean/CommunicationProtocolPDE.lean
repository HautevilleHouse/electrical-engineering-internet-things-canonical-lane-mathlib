import ElectricalEngineeringInternetThingsCanonicalLaneLean.SensorNetworkTopology

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure CommunicationProtocolPDEPackage (T : SensorNetworkTopologyPackage) where
  timeParameter : Type u
  messageAt : timeParameter → Type v
  initialMessageMatch : Prop
  differentiableMessageFamily : Prop
  protocolEquation : Prop
  maximalTimeInterval : Prop

structure CommunicationProtocolPDEEvidence {T : SensorNetworkTopologyPackage}
    (P : CommunicationProtocolPDEPackage T) where
  initialMessageMatchClosed : P.initialMessageMatch
  differentiableMessageFamilyClosed : P.differentiableMessageFamily
  protocolEquationClosed : P.protocolEquation
  maximalTimeIntervalClosed : P.maximalTimeInterval

def CommunicationProtocolPDEClosed {T : SensorNetworkTopologyPackage}
    (P : CommunicationProtocolPDEPackage T) : Prop :=
  P.initialMessageMatch ∧ P.differentiableMessageFamily ∧
  P.protocolEquation ∧ P.maximalTimeInterval

theorem communication_protocol_pde_closed_from_evidence
    {T : SensorNetworkTopologyPackage} (P : CommunicationProtocolPDEPackage T)
    (E : CommunicationProtocolPDEEvidence P) : CommunicationProtocolPDEClosed P := by
  exact And.intro E.initialMessageMatchClosed
    (And.intro E.differentiableMessageFamilyClosed
      (And.intro E.protocolEquationClosed E.maximalTimeIntervalClosed))

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse