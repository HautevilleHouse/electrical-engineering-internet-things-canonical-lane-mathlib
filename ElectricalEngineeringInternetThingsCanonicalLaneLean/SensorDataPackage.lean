import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInternetThingsCanonicalLaneLean

structure SensorDataPackage where
  dataType : String
  samplingRate : Prop
  dataFidelity : Prop
  compressionScheme : Prop
  storagePolicy : Prop

structure SensorDataEvidence (S : SensorDataPackage) where
  samplingRateClosed : S.samplingRate
  dataFidelityClosed : S.dataFidelity
  compressionSchemeClosed : S.compressionScheme
  storagePolicyClosed : S.storagePolicy

def SensorDataClosed (S : SensorDataPackage) : Prop :=
  S.samplingRate ∧ S.dataFidelity ∧
  S.compressionScheme ∧ S.storagePolicy

theorem sensor_data_closed_from_evidence (S : SensorDataPackage) (E : SensorDataEvidence S) :
    SensorDataClosed S := by
  exact And.intro E.samplingRateClosed
    (And.intro E.dataFidelityClosed
      (And.intro E.compressionSchemeClosed E.storagePolicyClosed))

end ElectricalEngineeringInternetThingsCanonicalLaneLean
end HautevilleHouse