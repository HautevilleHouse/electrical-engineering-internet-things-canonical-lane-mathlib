import HautevilleHouse.ElectricalEngineeringInternetThingsCanonicalLaneLean.IoTDevice

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure CommunicationProtocolPackage (D : IoTDevicePackage) where
  protocolName : String
  modulationType : String
  errorCorrection : Prop
  bandwidthEfficient : Prop
  latencyAcceptable : Prop
  errorCorrectionValid : Prop
  bandwidthEfficientValid : Prop
  latencyAcceptableValid : Prop

structure CommunicationProtocolEvidence {D : IoTDevicePackage} (P : CommunicationProtocolPackage D) where
  errorCorrectionClosed : P.errorCorrection
  bandwidthEfficientClosed : P.bandwidthEfficient
  latencyAcceptableClosed : P.latencyAcceptable

def CommunicationProtocolClosed {D : IoTDevicePackage} (P : CommunicationProtocolPackage D) : Prop :=
  P.errorCorrection ∧ P.bandwidthEfficient ∧ P.latencyAcceptable

theorem communication_protocol_closed_from_evidence {D : IoTDevicePackage} (P : CommunicationProtocolPackage D) (E : CommunicationProtocolEvidence P) : CommunicationProtocolClosed P := by
  exact And.intro E.errorCorrectionClosed (And.intro E.bandwidthEfficientClosed E.latencyAcceptableClosed)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse