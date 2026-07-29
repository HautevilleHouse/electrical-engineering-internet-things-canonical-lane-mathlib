import ElectricalEngineeringInternetThingsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure AdmissibleClass where
  object : IoTAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  IoTWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse