import HautevilleHouse.ElectricalEngineeringInternetThingsCanonicalLaneLean.SensorNetwork

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure DataFusionPackage {D : IoTDevicePackage} {P : CommunicationProtocolPackage D} {N : SensorNetworkPackage P} where
  fusionAlgorithm : String
  dataConsistency : Prop
  reducedRedundancy : Prop
  improvedAccuracy : Prop
  consistencyValid : Prop
  redundancyValid : Prop
  accuracyValid : Prop

structure DataFusionEvidence {D : IoTDevicePackage} {P : CommunicationProtocolPackage D} {N : SensorNetworkPackage P} (F : DataFusionPackage P N) where
  consistencyClosed : F.dataConsistency
  redundancyClosed : F.reducedRedundancy
  accuracyClosed : F.improvedAccuracy

def DataFusionClosed {D : IoTDevicePackage} {P : CommunicationProtocolPackage D} {N : SensorNetworkPackage P} (F : DataFusionPackage P N) : Prop :=
  F.dataConsistency ∧ F.reducedRedundancy ∧ F.improvedAccuracy

theorem data_fusion_closed_from_evidence {D : IoTDevicePackage} {P : CommunicationProtocolPackage D} {N : SensorNetworkPackage P} (F : DataFusionPackage P N) (E : DataFusionEvidence F) : DataFusionClosed F := by
  exact And.intro E.consistencyClosed (And.intro E.redundancyClosed E.accuracyClosed)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse