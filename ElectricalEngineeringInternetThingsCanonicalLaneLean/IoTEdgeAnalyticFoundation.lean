import ElectricalEngineeringInternetThingsCanonicalLaneLean.CommunicationProtocolPDE

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure IoTEdgeAnalyticFoundation where
  topology : SensorNetworkTopologyPackage
  topologyEvidence : SensorNetworkTopologyEvidence topology
  protocol : CommunicationProtocolPDEPackage topology
  protocolEvidence : CommunicationProtocolPDEEvidence protocol

def IoTEdgeAnalyticFoundationClosed (A : IoTEdgeAnalyticFoundation) : Prop :=
  SensorNetworkTopologyClosed A.topology ∧ CommunicationProtocolPDEClosed A.protocol

theorem iot_edge_analytic_foundation_closed_from_evidence
    (A : IoTEdgeAnalyticFoundation) : IoTEdgeAnalyticFoundationClosed A := by
  exact And.intro (sensor_network_topology_closed_from_evidence A.topology A.topologyEvidence)
    (communication_protocol_pde_closed_from_evidence A.protocol A.protocolEvidence)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse