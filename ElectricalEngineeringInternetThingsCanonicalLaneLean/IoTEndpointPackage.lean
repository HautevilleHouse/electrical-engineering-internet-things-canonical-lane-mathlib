import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure IoTEndpointPackage where
  targetDevice : Type u
  targetNetwork : Type v
  endToEndLatency : Prop
  dataDeliveryGuarantee : Prop
  endpointMatchesSpec : Prop

structure IoTEndpointEvidence (E : IoTEndpointPackage) where
  endToEndLatencyClosed : E.endToEndLatency
  dataDeliveryGuaranteeClosed : E.dataDeliveryGuarantee
  endpointMatchesSpecClosed : E.endpointMatchesSpec

def IoTEndpointClosed (E : IoTEndpointPackage) : Prop :=
  E.endToEndLatency ∧ E.dataDeliveryGuarantee ∧ E.endpointMatchesSpec

theorem iot_endpoint_closed_from_evidence (E : IoTEndpointPackage) (Ev : IoTEndpointEvidence E) :
    IoTEndpointClosed E := by
  exact And.intro Ev.endToEndLatencyClosed
    (And.intro Ev.dataDeliveryGuaranteeClosed Ev.endpointMatchesSpecClosed)

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse