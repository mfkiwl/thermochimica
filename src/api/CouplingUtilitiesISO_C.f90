subroutine SetThermoFileNameISO(cFileName, lcFileName) &
    bind(C, name="TCAPI_setThermoFilename")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    character(kind=c_char,len=1), target, intent(in) :: cFileName(*)
    integer(c_size_t), intent(in), value             :: lcFileName
    character(kind=c_char,len=lcFileName), pointer :: fFileName

    call c_f_pointer(cptr=c_loc(cFileName), fptr=fFileName)
    
    call SetThermoFileName(fFileName,lcFileName)

    return

end subroutine SetThermoFileNameISO

subroutine SetUnitTemperatureISO(cUnitTemperature, lcUnitTemperature) &
    bind(C, name="TCAPI_setUnitTemperature")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    character(kind=c_char,len=1), target, intent(in)      :: cUnitTemperature(*)
    integer(c_size_t), intent(in), value                  :: lcUnitTemperature
    character(kind=c_char,len=lcUnitTemperature), pointer :: fUnitTemperature

    call c_f_pointer(cptr=c_loc(cUnitTemperature), fptr=fUnitTemperature)
    call SetUnitTemperature(fUnitTemperature)

    return

end subroutine SetUnitTemperatureISO

subroutine SetUnitPressureISO(cUnitPressure, lcUnitPressure) &
    bind(C, name="TCAPI_setUnitPressure")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    character(kind=c_char,len=1), target, intent(in)   :: cUnitPressure(*)
    integer(c_size_t), intent(in), value               :: lcUnitPressure
    character(kind=c_char,len=lcUnitPressure), pointer :: fUnitPressure

    call c_f_pointer(cptr=c_loc(cUnitPressure), fptr=fUnitPressure)
    call SetUnitPressure(fUnitPressure)

    return

end subroutine SetUnitPressureISO

subroutine SetUnitMassISO(cUnitMass, lcUnitMass) &
    bind(C, name="TCAPI_setUnitMass")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    character(kind=c_char,len=1), target, intent(in)   :: cUnitMass(*)
    integer(c_size_t), intent(in), value               :: lcUnitMass
    character(kind=c_char,len=lcUnitMass), pointer :: fUnitMass

    call c_f_pointer(cptr=c_loc(cUnitMass), fptr=fUnitMass)
    call SetUnitMass(fUnitMass)

    return

end subroutine SetUnitMassISO

subroutine SetStandardUnitsISO() &
    bind(C, name="TCAPI_setStandardUnits")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call SetStandardUnits

    return

end subroutine SetStandardUnitsISO

subroutine SetModelicaUnitsISO() &
    bind(C, name="TCAPI_setModelicaUnits")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call SetModelicaUnits

    return

end subroutine SetModelicaUnitsISO

subroutine SetUnitsISO(cTemperature, lcTemperature, cPressure, lcPressure, cMass, lcMass) &
    bind(C, name="TCAPI_setUnits")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    character(kind=c_char,len=1), target, intent(in)  ::  cTemperature(*), cPressure(*), cMass(*)
    integer(c_size_t), intent(in), value              :: lcTemperature,   lcPressure,   lcMass
    character(kind=c_char,len=lcTemperature), pointer ::  fTemperature
    character(kind=c_char,len=lcPressure),    pointer ::  fPressure
    character(kind=c_char,len=lcMass),        pointer ::  fMass

    call c_f_pointer(cptr=c_loc(cTemperature), fptr=fTemperature)
    call c_f_pointer(cptr=c_loc(cPressure),    fptr=fPressure)
    call c_f_pointer(cptr=c_loc(cMass),        fptr=fMass)

    call SetUnits(fTemperature,fPressure,fMass)

    return

end subroutine SetUnitsISO

subroutine SetTemperaturePressureISO(dTemp, dPress) &
    bind(C, name="TCAPI_setTemperaturePressure")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    real(8), intent(in)::  dTemp
    real(8), intent(in)::  dPress

    call SetTemperaturePressure(dTemp, dPress)

    return

end subroutine SetTemperaturePressureISO

subroutine SetPrintResultsModeISO(Pinfo) &
    bind(C, name="TCAPI_setPrintResultsMode")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer Pinfo

    call SetPrintResultsMode(Pinfo)

    return

end subroutine SetPrintResultsModeISO

subroutine PresetElementMassISO(iAtom, dMass) &
    bind(C, name="TCAPI_presetElementMass")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer, intent(in)::  iAtom
    real(8), intent(in)::  dMass

    call PresetElementMass(iAtom, dMass)

    return

end subroutine PresetElementMassISO

subroutine SetElementMassISO(iAtom, dMass) &
    bind(C, name="TCAPI_setElementMass")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none
    integer(c_int), intent(in)::  iAtom
    real(8), intent(in)::  dMass
    
    call SetElementMass(iAtom, dMass)

    return

end subroutine SetElementMassISO

subroutine GetElementMassISO(iAtom, dMass) &
    bind(C, name="TCAPI_getElementMass")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer, intent(in)::  iAtom
    real(8), intent(out)::  dMass

    call GetElementMass(iAtom, dMass)

    return

end subroutine GetElementMassISO

subroutine CheckINFOThermoISO(dbginfo) &
    bind(C, name="TCAPI_checkInfoThermo")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer, intent(out)::  dbginfo

    call CheckINFOThermo(dbginfo)

    return

end subroutine CheckINFOThermoISO

subroutine ResetINFOThermoISO() &
    bind(C, name="TCAPI_resetInfoThermo")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call ResetINFOThermo

    return

end subroutine ResetINFOThermoISO

subroutine ResetThermoISO() &
    bind(C, name="TCAPI_resetThermo")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call ResetThermo

    return

end subroutine ResetThermoISO

subroutine ResetThermoAllISO() &
    bind(C, name="TCAPI_resetThermoAll")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call ResetThermoAll

    return

end subroutine ResetThermoAllISO

subroutine ThermoDebugISO() &
    bind(C, name="TCAPI_thermoDebug")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call ThermoDebug

    return

end subroutine ThermoDebugISO

subroutine PrintResultsISO() &
    bind(C, name="TCAPI_printResults")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call PrintResults

    return

end subroutine PrintResultsISO

subroutine SaveReinitDataISO() &
    bind(C, name="TCAPI_saveReinitData")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call SaveReinitData

    return

end subroutine SaveReinitDataISO

subroutine ResetReinitISO() &
    bind(C, name="TCAPI_resetReinit")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call ResetReinit

    return

end subroutine ResetReinitISO

subroutine SolPhaseParseISO(iElem, dMolSum) &
    bind(C, name="TCAPI_solPhaseParse")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer, intent(in):: iElem
    real(8), intent(out):: dMolSum
    
    call SolPhaseParse(iElem, dMolSum)

    return
end subroutine SolPhaseParseISO

subroutine SSParseCSDataFileISO() &
    bind(C, name="TCAPI_sSParseCSDataFile")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call SSParseCSDataFile

    return

end subroutine SSParseCSDataFileISO

subroutine ThermochimicaISO() &
    bind(C, name="TCAPI_thermochimica")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    call Thermochimica()

    return

end subroutine ThermochimicaISO

subroutine getMolFractionISO(i, value, ierr) &
    bind(C, name="TCAPI_getMolFraction")

    USE,INTRINSIC :: ISO_C_BINDING

    USE ModuleThermo
    implicit none

    integer, intent(in)::  i
    integer, intent(out):: ierr
    real(8), intent(out):: value

    call getMolFraction(i, value, ierr)

    return
end subroutine getMolFractionISO

subroutine getChemicalPotentialISO(i, value, ierr) &
    bind(C, name="TCAPI_getChemicalPotential")

    USE,INTRINSIC :: ISO_C_BINDING

    USE ModuleThermo
    implicit none

    integer, intent(in)::  i
    integer, intent(out):: ierr
    real(8), intent(out):: value

    call getChemicalPotential(i, value, ierr)

    return
end subroutine getChemicalPotentialISO

subroutine getElementPotentialISO(i, value, ierr) &
    bind(C, name="TCAPI_getElementPotential")

    USE,INTRINSIC :: ISO_C_BINDING

    USE ModuleThermoIO
    USE ModuleThermo
    implicit none

    integer, intent(in)::  i
    integer, intent(out):: ierr
    real(8), intent(out):: value

    call getElementPotential(i, value, ierr)

    return

end subroutine getElementPotentialISO

subroutine SetReinitRequestedISO(iRequested) &
    bind(C, name="TCAPI_setReinitRequested")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer, intent(in)::  iRequested

    call SetReinitRequested(iRequested)

    return

end subroutine SetReinitRequestedISO

subroutine getReinitDataSizesISO(mElements, mSpecies) &
    bind(C, name="TCAPI_getReinitDataSizes")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer, intent(out) :: mElements, mSpecies

    call getReinitDataSizes(mElements,mSpecies)

    return

end subroutine getReinitDataSizesISO

subroutine GetMolesPhaseISO(mMolesPhase) &
    bind(C, name="TCAPI_getMolesPhase")

    USE,INTRINSIC :: ISO_C_BINDING

    USE ModuleThermo, ONLY: nElements

    implicit none

    real(8), intent(out), dimension(nElements) :: mMolesPhase

    call GetMolesPhase(mMolesPhase)

    return

end subroutine GetMolesPhaseISO

subroutine GetAssemblageISO(mAssemblage) &
    bind(C, name="TCAPI_getAssemblage")

    USE,INTRINSIC :: ISO_C_BINDING

    USE ModuleThermo, ONLY: nElements
    implicit none

    integer, intent(out), dimension(nElements)     :: mAssemblage

    call GetAssemblage(mAssemblage)

    return

end subroutine GetAssemblageISO

subroutine GetAllElementPotentialISO(mElementPotential) &
    bind(C, name="TCAPI_getAllElementPotential")

    USE,INTRINSIC :: ISO_C_BINDING

    USE ModuleThermo, ONLY: nElements
    implicit none

    real(8), intent(out), dimension(nElements)     :: mElementPotential

    call GetAllElementPotential(mElementPotential)

    return

end subroutine GetAllElementPotentialISO

subroutine GetElementFractionISO(iAtom, dFrac) &
    bind(C, name="TCAPI_getElementFraction")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer, intent(in) ::  iAtom
    real(8), intent(out)::  dFrac

    call GetElementFraction(iAtom, dFrac)

    return

end subroutine GetElementFractionISO

subroutine PrintStateISO() &
    bind(C, name="TCAPI_printState")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none
 
    call PrintState
 
end subroutine PrintStateISO

subroutine GetElementMoleFractionInPhaseISO(cElement, lcElement, cPhase, lcPhase, dMolesOut, INFO) &
    bind(C, name="TCAPI_getElementMoleFractionInPhase")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)   :: INFO
    real(8),       intent(out)   :: dMolesOut
    character(kind=c_char,len=1), target, intent(in) :: cPhase(*), cElement(*)
    integer(c_size_t), intent(in), value             :: lcPhase, lcElement
    character(kind=c_char,len=lcPhase), pointer      :: fPhase
    character(kind=c_char,len=lcElement), pointer    :: fElement

    call c_f_pointer(cptr=c_loc(cPhase), fptr=fPhase)
    call c_f_pointer(cptr=c_loc(cElement), fptr=fElement)

    call GetElementMoleFractionInPhase(fElement, lcElement, fPhase, lcPhase, dMolesOut, INFO)

    return

end subroutine GetElementMoleFractionInPhaseISO

subroutine GetElementMolesInPhaseISO(cElement, lcElement, cPhase, lcPhase, dMolesOut, INFO) &
    bind(C, name="TCAPI_getElementMolesInPhase")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)   :: INFO
    real(8),       intent(out)   :: dMolesOut
    character(kind=c_char,len=1), target, intent(in) :: cPhase(*), cElement(*)
    integer(c_size_t), intent(in), value             :: lcPhase, lcElement
    character(kind=c_char,len=lcPhase), pointer      :: fPhase
    character(kind=c_char,len=lcElement), pointer    :: fElement

    call c_f_pointer(cptr=c_loc(cPhase), fptr=fPhase)
    call c_f_pointer(cptr=c_loc(cElement), fptr=fElement)

    call GetElementMolesInPhase(fElement, lcElement, fPhase, lcPhase, dMolesOut, INFO)

    return

end subroutine GetElementMolesInPhaseISO

subroutine GetOutputChemPotISO(cElementNameRequest, lcElementNameRequest, dElementChemPot, INFO) &
    bind(C, name="TCAPI_getOutputChemPot")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,      intent(out)   :: INFO
    real(8),      intent(out)   :: dElementChemPot
    character(kind=c_char,len=1), target, intent(in)         :: cElementNameRequest(*)
    integer(c_size_t), intent(in), value                     :: lcElementNameRequest
    character(kind=c_char,len=lcElementNameRequest), pointer :: fElementNameRequest

    call c_f_pointer(cptr=c_loc(cElementNameRequest), fptr=fElementNameRequest)

    call GetOutputChemPot(fElementNameRequest, dElementChemPot, INFO)

    return

end subroutine GetOutputChemPotISO

subroutine GetOutputMolSpeciesISO(cSpeciesOut, lcSpeciesOut, dMolFractionOut, dMolesOut, INFO) &
    bind(C, name="TCAPI_getOutputMolSpecies")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)   :: INFO
    real(8),       intent(out)   :: dMolFractionOut, dMolesOut
    character(kind=c_char,len=1), target, intent(in) :: cSpeciesOut(*)
    integer(c_size_t), intent(in), value             :: lcSpeciesOut
    character(kind=c_char,len=lcSpeciesOut), pointer :: fSpeciesOut

    call c_f_pointer(cptr=c_loc(cSpeciesOut), fptr=fSpeciesOut)

    call GetOutputMolSpecies(fSpeciesOut, lcSpeciesOut, dMolFractionOut, dMolesOut, INFO)

    return

end subroutine GetOutputMolSpeciesISO

subroutine GetOutputMolSpeciesPhaseISO(cPhase, lcPhase, cSpecies, lcSpecies, dMolFractionOut, INFO) &
    bind(C, name="TCAPI_getOutputMolSpeciesPhase")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer, intent(out)   :: INFO
    real(8), intent(out)   :: dMolFractionOut
    character(kind=c_char,len=1), target, intent(in) :: cPhase(*), cSpecies(*)
    integer(c_size_t), intent(in), value             :: lcPhase, lcSpecies
    character(kind=c_char,len=lcPhase), pointer      :: fPhase
    character(kind=c_char,len=lcSpecies), pointer    :: fSpecies

    call c_f_pointer(cptr=c_loc(cPhase), fptr=fPhase)
    call c_f_pointer(cptr=c_loc(cSpecies), fptr=fSpecies)

    call GetOutputMolSpeciesPhase(fPhase, lcPhase, fSpecies, lcSpecies, dMolFractionOut, INFO)

    return

end subroutine GetOutputMolSpeciesPhaseISO

subroutine GetOutputSiteFractionISO(cSolnOut, lcSolnOut, iSublatticeOut, iConstituentOut, dSiteFractionOut, INFO) &
    bind(C, name="TCAPI_getOutputSiteFraction")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)   :: INFO
    real(8),       intent(out)   :: dSiteFractionOut
    integer                      :: iSublatticeOut, iConstituentOut
    character(kind=c_char,len=1), target, intent(in) :: cSolnOut(*)
    integer(c_size_t), intent(in), value             :: lcSolnOut
    character(kind=c_char,len=lcSolnOut), pointer    :: fSolnOut

    call c_f_pointer(cptr=c_loc(cSolnOut), fptr=fSolnOut)

    call GetOutputSiteFraction(fSolnOut, lcSolnOut, iSublatticeOut, iConstituentOut, dSiteFractionOut, INFO)

    return

end subroutine GetOutputSiteFractionISO

subroutine GetOutputSolnSpeciesISO(cSolnOut, lcSolnOut, cSpeciesOut, lcSpeciesOut, dMolFractionOut, dChemPotSpecies, INFO) &
    bind(C, name="TCAPI_getOutputSolnSpecies")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)   :: INFO
    real(8),       intent(out)   :: dMolFractionOut, dChemPotSpecies
    character(kind=c_char,len=1), target, intent(in) :: cSolnOut(*), cSpeciesOut(*)
    integer(c_size_t), intent(in), value             :: lcSolnOut, lcSpeciesOut
    character(kind=c_char,len=lcSolnOut), pointer    :: fSolnOut
    character(kind=c_char,len=lcSpeciesOut), pointer :: fSpeciesOut

    call c_f_pointer(cptr=c_loc(cSolnOut), fptr=fSolnOut)
    call c_f_pointer(cptr=c_loc(cSpeciesOut), fptr=fSpeciesOut)

    call GetOutputSolnSpecies(fSolnOut, lcSolnOut, fSpeciesOut, lcSpeciesOut, dMolFractionOut, dChemPotSpecies, INFO)

    return

end subroutine GetOutputSolnSpeciesISO

subroutine GetPhaseIndexISO(cPhaseName, lcPhaseName, iIndexOut, INFO) &
    bind(C, name="TCAPI_getPhaseIndex")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)   :: INFO
    integer,       intent(out)   :: iIndexOut
    character(kind=c_char,len=1), target, intent(in) :: cPhaseName(*)
    integer(c_size_t), intent(in), value             :: lcPhaseName
    character(kind=c_char,len=lcPhaseName), pointer  :: fPhaseName

    call c_f_pointer(cptr=c_loc(cPhaseName), fptr=fPhaseName)

    call GetPhaseIndex(cPhaseName, lcPhaseName, iIndexOut, INFO)

    return

end subroutine GetPhaseIndexISO

subroutine GetPureConPhaseMolISO(cPureConOut, lcPureConOut, dPureConMolOut, INFO) &
    bind(C, name="TCAPI_getPureConPhaseMol")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)   :: INFO
    real(8),       intent(out)   :: dPureConMolOut
    character(kind=c_char,len=1), target, intent(in) :: cPureConOut(*)
    integer(c_size_t), intent(in), value             :: lcPureConOut
    character(kind=c_char,len=lcPureConOut), pointer :: fPureConOut

    call c_f_pointer(cptr=c_loc(cPureConOut), fptr=fPureConOut)

    call GetPureConPhaseMol(fPureConOut, dPureConMolOut, INFO)

    return

end subroutine GetPureConPhaseMolISO

subroutine GetSUBLSiteMolISO(cSolnOut, lcSolnOut, iSublatticeOut, iConstituentOut, dSiteMolOut, INFO) &
    bind(C, name="TCAPI_getSublSiteMol")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)   :: INFO
    real(8),       intent(out)   :: dSiteMolOut
    integer                      :: iSublatticeOut, iConstituentOut
    character(kind=c_char,len=1), target, intent(in) :: cSolnOut(*)
    integer(c_size_t), intent(in), value             :: lcSolnOut
    character(kind=c_char,len=lcSolnOut), pointer    :: fSolnOut

    call c_f_pointer(cptr=c_loc(cSolnOut), fptr=fSolnOut)

    call GetSUBLSiteMol(fSolnOut, lcSolnOut, iSublatticeOut, iConstituentOut, dSiteMolOut, INFO)

    return

end subroutine GetSUBLSiteMolISO

subroutine GetSolnPhaseMolISO(cSolnOut, lcSolnOut, dSolnMolOut, INFO) &
    bind(C, name="TCAPI_getSolnPhaseMol")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)   :: INFO
    real(8),       intent(out)   :: dSolnMolOut
    character(kind=c_char,len=1), target, intent(in) :: cSolnOut(*)
    integer(c_size_t), intent(in), value             :: lcSolnOut
    character(kind=c_char,len=lcSolnOut), pointer    :: fSolnOut

    call c_f_pointer(cptr=c_loc(cSolnOut), fptr=fSolnOut)

    call GetSolnPhaseMol(fSolnOut, dSolnMolOut, INFO)

    return

end subroutine GetSolnPhaseMolISO

subroutine GetMqmqaMolesPairsISO(cPhaseName, lcPhaseName, dMolesPairsOut, INFO) &
    bind(C, name="TCAPI_getMqmqaMolesPairs")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)               :: INFO
    real(8),       intent(out)               :: dMolesPairsOut
    character(kind=c_char,len=1), target, intent(in) :: cPhaseName(*)
    integer(c_size_t), intent(in), value             :: lcPhaseName
    character(kind=c_char,len=lcPhaseName), pointer  :: fPhaseName

    call c_f_pointer(cptr=c_loc(cPhaseName), fptr=fPhaseName)

    call GetMqmqaMolesPairs(fPhaseName, dMolesPairsOut, INFO)    

    return

end subroutine GetMqmqaMolesPairsISO

subroutine GetMqmqaPairMolFractionISO(cPhaseName, lcPhaseName, cPairIn, lcPairIn, dMolesPairOut, INFO) &
    bind(C, name="TCAPI_getMqmqaPairMolFraction")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)               :: INFO
    real(8),       intent(out)               :: dMolesPairOut
    character(kind=c_char,len=1), target, intent(in) :: cPhaseName(*), cPairIn(*)
    integer(c_size_t), intent(in), value             :: lcPhaseName, lcPairIn
    character(kind=c_char,len=lcPhaseName), pointer  :: fPhaseName
    character(kind=c_char,len=lcPairIn), pointer     :: fPairIn


    call c_f_pointer(cptr=c_loc(cPhaseName), fptr=fPhaseName)
    call c_f_pointer(cptr=c_loc(cPairIn), fptr=fPairIn)

    call GetMqmqaPairMolFraction(fPhaseName, lcPhaseName, fPairIn, lcPairIn, dMolesPairOut, INFO)

    return

end subroutine GetMqmqaPairMolFractionISO

subroutine GetMqmqaNumberPairsQuadsISO(cPhaseName,lcPhaseName, nPairs, nQuads, INFO) &
    bind(C, name="TCAPI_getMqmqaNumberPairsQuads")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)               :: INFO, nPairs, nQuads
    character(kind=c_char,len=1), target, intent(in) :: cPhaseName(*)
    integer(c_size_t), intent(in), value             :: lcPhaseName
    character(kind=c_char,len=lcPhaseName), pointer  :: fPhaseName

    call c_f_pointer(cptr=c_loc(cPhaseName), fptr=fPhaseName)

    call GetMqmqaNumberPairsQuads(fPhaseName, nPairs, nQuads, INFO)

    return

end subroutine GetMqmqaNumberPairsQuadsISO

subroutine GetMqmqaConstituentFractionISO(cPhase,lcPhase,iSublattice,cConstituent,lcConstituent,dConstituentFractionOut,INFO) &
    bind(C, name="TCAPI_getMqmqaConstituentFraction")

    USE,INTRINSIC :: ISO_C_BINDING

    implicit none

    integer,       intent(out)               :: INFO
    integer,       intent(in)                :: iSublattice
    real(8),       intent(out)               :: dConstituentFractionOut
    character(kind=c_char,len=1), target, intent(in) :: cPhase(*), cConstituent(*)
    integer(c_size_t), intent(in), value             :: lcPhase,   lcConstituent
    character(kind=c_char,len=lcPhase),       pointer  :: fPhase
    character(kind=c_char,len=lcConstituent), pointer  :: fConstituent

    call c_f_pointer(cptr=c_loc(cPhase),       fptr=fPhase)
    call c_f_pointer(cptr=c_loc(cConstituent), fptr=fConstituent)

    call GetMqmqaConstituentFraction(fPhase, iSublattice, fConstituent, dConstituentFractionOut, INFO)

    return

end subroutine GetMqmqaConstituentFractionISO