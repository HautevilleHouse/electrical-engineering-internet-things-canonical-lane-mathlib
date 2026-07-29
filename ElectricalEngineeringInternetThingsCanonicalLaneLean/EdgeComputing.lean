import HautevilleHouse.ElectricalEngineeringInternetThingsCanonicalLaneLean.DataFusion

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure EdgeComputingPackage {D : IoTDevicePackage} {P : CommunicationProtocolPackage D} {N : SensorNetworkPackage P} {F : DataFusionPackage P N} where
  edgeNodeId : String
  processingCapability : Prop
  lowLatency : Prop
  resourceEfficient : Prop
  capabilityValid : Prop
  latencyValid : Prop
  efficiencyValid : Prop

structure EdgeComputingEvidence {D : IoTDevicePackage} {P : CommunicationProtocolPackage D} {N : SensorNetworkPackage P} {F : DataFusionPackage P N} (E : EdgeComputingPackage F) where
  capabilityClosed : E.processingCapability
  latencyClosed : E.lowLatency
  efficiencyClosed : E.resourceEfficient

def EdgeComputingClosed {D : IoTDevicePackage} {P : CommunicationProtocolPackage D} {N : SensorNetworkPackage P} {F : DataFusionPackage P N} (E : EdgeComputingPackage F) : Prop :=
  E.processingCapability ∧ E.lowLatency ∧ E.resourceEfficient

theorem edge_computing_closed_from_evidence {D : IoTDevicePackage} {P : CommunicationProtocolPackage D} {N : SensorNetworkPackage P} {F : DataFusionPackage P N} (E : EdgeComputingPackage F) (Ev : EdgeComputingEvidence E) : EdgeComputingClosed E := by
  exact And.intro Ev.capabilityClosed (And.intro Ev.latencyClosed Ev.efficiencyClosed)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse