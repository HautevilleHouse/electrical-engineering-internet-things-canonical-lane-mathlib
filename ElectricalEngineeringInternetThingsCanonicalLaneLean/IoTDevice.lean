import HautevilleHouse.ElectricalEngineeringInternetThingsCanonicalLaneLean.IoTAdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure IoTDevicePackage where
  deviceId : String
  sensorType : String
  connectivityProtocol : String
  powerSource : String
  dataRate : Nat
  operational : Prop
  connectivityValid : Prop
  dataRateSufficient : Prop

structure IoTDeviceEvidence (P : IoTDevicePackage) where
  operationalClosed : P.operational
  connectivityValidClosed : P.connectivityValid
  dataRateSufficientClosed : P.dataRateSufficient

def IoTDeviceClosed (P : IoTDevicePackage) : Prop :=
  P.operational ∧ P.connectivityValid ∧ P.dataRateSufficient

theorem iot_device_closed_from_evidence (P : IoTDevicePackage) (E : IoTDeviceEvidence P) : IoTDeviceClosed P := by
  exact And.intro E.operationalClosed (And.intro E.connectivityValidClosed E.dataRateSufficientClosed)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse