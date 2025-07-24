#include "TOTVS.CH"
#include "FWMVCDEF.CH"

/*/{Protheus.doc} AFAT001
Rotina de manutenção do cadastro de .
@type function
@version 1.0 
@author Luiz Alves Felizardo
@since 23/07/2025
/*/
User Function AFAT001()

	Local oBrowse := Nil

	oBrowse := FWMBrowse():New()
		oBrowse:SetAlias("Z01")
		oBrowse:SetDescription(FWX2Nome("Z01"))
		oBrowse:SetMenuDef("CUSTOM.FAT.AFAT001")
		oBrowse:Activate()

Return

/*/{Protheus.doc} MenuDef
Definição do menu da rotina.
@type function
@version 1.0
@author Luiz Alves Felizardo
@since 23/07/2025
@return array, vetor
/*/
Static Function MenuDef()

	Local aRotina := FWMVCMenu("CUSTOM.FAT.AFAT001")

Return aRotina

/*/{Protheus.doc} ModelDef
Definição do modelo (model) da rotina.
@type function
@version 1.0  
@author Luiz Alves Felizardo
@since 23/07/2025
@return object, objeto
/*/
Static Function ModelDef()

	Local oModel   := nil
	Local oStruZ01 := FWFormStruct(1, "Z01")

	oModel := MPFormModel():New("CUSTOM.FAT.AFAT001")
		oModel:SetDescription(FWX2Nome("Z01"))
		oModel:addFields("Z01MASTER",, oStruZ01)
		oModel:SetPrimaryKey({"Z01_FILIAL", "Z01_COD"})
		oModel:GetModel("Z01MASTER"):SetFldNoCopy({"Z01_COD"})
		oModel:GetModel("Z01MASTER"):SetDescription(FWX2Nome("Z01"))

Return oModel

/*/{Protheus.doc} ViewDef
Definição da visão (view) da rotina.
@type function
@version 1.0  
@author Luiz Alves Felizardo
@since 23/07/2025
@return object, objeto
/*/
Static Function ViewDef()

	Local oView    := Nil
	Local oModel   := ModelDef()
	Local oStruZ01 := FWFormStruct(2, "Z01")

	oView := FWFormView():New()
		oView:SetModel(oModel)
		oView:bCloseOnOk := {|| .T.}
		oView:ShowUpdateMsg(.F.)
		oView:AddField("VIEW_Z01", oStruZ01, "Z01MASTER")

Return oView
