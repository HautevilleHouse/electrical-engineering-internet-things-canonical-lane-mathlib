import HautevilleHouse.ElectricalEngineeringInternetThingsCanonicalLaneLean.IoTAdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

def bridgeClosed (A : IoTAdmissibleClass) : Prop :=
  gatewayWitnessClosed A.object

theorem bridge_from_admissible_class (A : IoTAdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : IoTAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : IoTAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse