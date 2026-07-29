import ElectricalEngineeringInternetThingsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IoTWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse