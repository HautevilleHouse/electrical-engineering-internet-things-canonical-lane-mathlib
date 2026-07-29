import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure IoTDevice where
  deviceId : String
  sensorData : String
  actuatorStatus : Bool

def IoTWitnessClosed (d : IoTDevice) : Prop :=
  d.actuatorStatus = true

structure IoTAdmittedObject where
  device : IoTDevice
  connected : Prop
  dataIntegrity : Prop
  conclusion : IoTWitnessClosed device ∧ connected ∧ dataIntegrity

structure AdmissibleClass where
  object : IoTAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (IoTWitnessClosed A.object.device) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse