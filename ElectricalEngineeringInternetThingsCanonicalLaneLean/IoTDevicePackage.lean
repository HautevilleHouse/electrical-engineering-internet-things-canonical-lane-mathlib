import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure IoTDevicePackage where
  deviceId : String
  sensorCapabilities : Prop
  connectivityProtocol : Prop
  powerConstraints : Prop
  securityRequirements : Prop

structure IoTDeviceEvidence (D : IoTDevicePackage) where
  sensorCapabilitiesClosed : D.sensorCapabilities
  connectivityProtocolClosed : D.connectivityProtocol
  powerConstraintsClosed : D.powerConstraints
  securityRequirementsClosed : D.securityRequirements

def IoTDeviceClosed (D : IoTDevicePackage) : Prop :=
  D.sensorCapabilities ∧ D.connectivityProtocol ∧
  D.powerConstraints ∧ D.securityRequirements

theorem iot_device_closed_from_evidence (D : IoTDevicePackage) (E : IoTDeviceEvidence D) :
    IoTDeviceClosed D := by
  exact And.intro E.sensorCapabilitiesClosed
    (And.intro E.connectivityProtocolClosed
      (And.intro E.powerConstraintsClosed E.securityRequirementsClosed))

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse