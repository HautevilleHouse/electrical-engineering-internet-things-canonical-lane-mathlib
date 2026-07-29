import ElectricalEngineeringInternetThingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure IoTDeviceModel where
  deviceId : String
  sensorTypes : List String
  actuatorTypes : List String
  connectivityProtocol : String
  energyCapacity : Nat
  processingPower : Nat

define IoTDeviceModelValid (d : IoTDeviceModel) : Prop :=
  d.sensorTypes.length > 0 ∨ d.actuatorTypes.length > 0

structure IoTDeviceEvidence (d : IoTDeviceModel) where
  sensorOrActuatorPresent : IoTDeviceModelValid d
  connectivityProtocolSupported : d.connectivityProtocol ∈ ["WiFi", "BLE", "Zigbee", "LoRa"]
  energyCapacityPositive : d.energyCapacity > 0

def IoTDeviceModelClosed (d : IoTDeviceModel) : Prop :=
  IoTDeviceModelValid d ∧ d.energyCapacity > 0

theorem iot_device_model_closed_from_evidence (d : IoTDeviceModel) (e : IoTDeviceEvidence d) :
    IoTDeviceModelClosed d := by
  exact And.intro e.sensorOrActuatorPresent e.energyCapacityPositive

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse