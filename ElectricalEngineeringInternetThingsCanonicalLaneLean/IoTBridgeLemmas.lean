import HautevilleHouse.ElectricalEngineeringInternetThingsCanonicalLaneLean.IoTAdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IoTWitnessClosed A.object.device

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion.1

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse