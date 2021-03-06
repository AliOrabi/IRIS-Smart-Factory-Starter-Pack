Class JDE.rest.spec Extends %REST.Spec
{

XData OpenAPI [ MimeType = application/json ]
{
{
  "swagger":"2.0",
  "info":{
    "description":"Workorder and routing data from JD Edwards.",
    "version":"1.0.0",
    "title":"JDE workorderRouting"
  },
  "basePath":"/jdetest",
  "tags":[
    {
      "name":"JDE workorder",
      "description":"Workorder definition from JD Edwards",
      "externalDocs":{
        "description":"Find out more",
        "url":"https://www.jdedwardserp.com/nl/"
      }
    }
  ],
  "schemes":[
    "http"
  ],
  "paths":{
    "/workorders":{
      "post":{
        "tags":[
          "JDE workorder"
        ],
        "summary":"Insert a list of workorders",
        "description":"",
        "operationId":"addWorkorders",
        "consumes":[
          "application/json"
        ],
        "produces":[
          "application/json"
        ],
        "parameters":[
          {
            "in":"body",
            "name":"workorders",
            "description":"List of workorders",
            "required":true,
            "schema":{
              "$ref":"#/definitions/workorders"
            }
          }
        ],
        "responses":{
          "200":{
            "description":"OK"
          },
          "405":{
            "description":"Invalid input"
          }
        },
        "security":[
          {
            "workorder_auth":[
            ]
          }
        ]
      }
    }
  },
  "securityDefinitions":{
    "workorder_auth":{
      "type":"basic"
    }
  },
  "definitions":{
    "workorders":{
      "type":"array",
      "items":{
        "$ref":"#/definitions/workorder"
      }
    },
    "workorder":{
      "type":"object",
      "properties":{
        "OrderType":{
          "type":"string"
        },
        "DocumentNumber":{
          "type":"integer"
        },
        "OrderSuffix":{
          "type":"string"
        },
        "Related_PO_SO_WO_OrderType":{
          "type":"string"
        },
        "Related_PO_SO_WO_Number":{
          "type":"string"
        },
        "LineNumber":{
          "type":"number"
        },
        "PegToWorkOrder":{
          "type":"integer"
        },
        "NumberParentWONumber":{
          "type":"string"
        },
        "TypeWO":{
          "type":"string"
        },
        "PriorityWO":{
          "type":"string"
        },
        "Description":{
          "type":"string"
        },
        "StatusComment":{
          "type":"string"
        },
        "Company":{
          "type":"string"
        },
        "BusinessUnit":{
          "type":"string"
        },
        "Branch":{
          "type":"string"
        },
        "Location":{
          "type":"string"
        },
        "Aisle":{
          "type":"string"
        },
        "Bin":{
          "type":"string"
        },
        "StatusCodeWO":{
          "type":"string"
        },
        "DateStatusChanged":{
          "type":"string",
          "format":"date"
        },
        "Subsidiary":{
          "type":"string"
        },
        "AddressNumber":{
          "type":"integer"
        },
        "AddressNumberOriginator":{
          "type":"integer"
        },
        "AddressNumberManager":{
          "type":"integer"
        },
        "Supervisor":{
          "type":"integer"
        },
        "AddressNumberAssignedTo":{
          "type":"integer"
        },
        "DateWOPlannedCompleted":{
          "type":"string",
          "format":"date"
        },
        "AddressNumberInspector":{
          "type":"integer"
        },
        "NextAddressNumber":{
          "type":"integer"
        },
        "DateOrder_Transaction":{
          "type":"string",
          "format":"date"
        },
        "DateStart":{
          "type":"string",
          "format":"date"
        },
        "DateRequested":{
          "type":"string",
          "format":"date"
        },
        "DateCompletion":{
          "type":"string",
          "format":"date"
        },
        "DateAssignedTo":{
          "type":"string",
          "format":"date"
        },
        "DateAssignedToInspector":{
          "type":"string",
          "format":"date"
        },
        "DatePaperPrintedDate":{
          "type":"string",
          "format":"date"
        },
        "CategoriesWorkOrder01":{
          "type":"string"
        },
        "CategoriesWorkOrder02":{
          "type":"string"
        },
        "CategoriesWorkOrder03":{
          "type":"string"
        },
        "CategoriesWorkOrder04":{
          "type":"string"
        },
        "CategoriesWorkOrder05":{
          "type":"string"
        },
        "PeopleSoftConsultingStatus":{
          "type":"string"
        },
        "PeopleSoftConsultingServiceType":{
          "type":"string"
        },
        "PeopleSoftConsultingSkillType":{
          "type":"string"
        },
        "PeopleSoftConsultingExperienceLevel":{
          "type":"string"
        },
        "CategoriesWorkOrder10":{
          "type":"string"
        },
        "Reference":{
          "type":"string"
        },
        "Reference2":{
          "type":"string"
        },
        "AmountEstimated":{
          "type":"number"
        },
        "CrewSize":{
          "type":"number"
        },
        "RevenueRateMarkupOverride":{
          "type":"number"
        },
        "Pay_Deduction_BenefitType":{
          "type":"string"
        },
        "AmountChangeToOriginalDollars":{
          "type":"number"
        },
        "HoursEstimated":{
          "type":"number"
        },
        "HoursChangeToOriginalHours":{
          "type":"number"
        },
        "AmountActual":{
          "type":"number"
        },
        "HoursActual":{
          "type":"number"
        },
        "ItemNumberShort":{
          "type":"integer"
        },
        "3rdItemNumber":{
          "type":"string"
        },
        "2ndItemNumber":{
          "type":"string"
        },
        "AssetItemNumber":{
          "type":"integer"
        },
        "UnitOrTagNumber":{
          "type":"string"
        },
        "UnitsOrder_TransactionQuantity":{
          "type":"number"
        },
        "UnitsQtyBackordered_Held":{
          "type":"number"
        },
        "UnitsQuantityCanceled_Scrapped":{
          "type":"number"
        },
        "QuantityShipped":{
          "type":"number"
        },
        "UnitsShippedToDate":{
          "type":"number"
        },
        "UnitOfMeasureasInput":{
          "type":"string"
        },
        "MessageNumber":{
          "type":"string"
        },
        "TimeBeginning_HH_MM_SS":{
          "type":"integer"
        },
        "TypeBillOfMaterial":{
          "type":"string"
        },
        "TypeOfRouting":{
          "type":"string"
        },
        "WOPickListPrinted":{
          "type":"string"
        },
        "PostingEdit":{
          "type":"string"
        },
        "VarianceFlag":{
          "type":"string"
        },
        "BillOfMaterial_N":{
          "type":"string"
        },
        "RouteSheet_N":{
          "type":"string"
        },
        "WorkOrderFlashMessage":{
          "type":"string"
        },
        "WorkOrderFreezeCode":{
          "type":"string"
        },
        "IndentedCode":{
          "type":"string"
        },
        "ResequenceCode":{
          "type":"number"
        },
        "AmountMilesOrHours_units":{
          "type":"number"
        },
        "DateScheduledTickler":{
          "type":"string",
          "format":"date"
        },
        "AmountMemoBudgetChanges":{
          "type":"number"
        },
        "PercentComplete":{
          "type":"integer"
        },
        "LeadtimeLevel":{
          "type":"integer"
        },
        "LeadtimeCumulative":{
          "type":"integer"
        },
        "HoursUnaccountedDirectLabor":{
          "type":"number"
        },
        "Lot_SerialNumber":{
          "type":"string"
        },
        "LotPotency":{
          "type":"number"
        },
        "LotGrade":{
          "type":"string"
        },
        "Ratio_CriticalRatioPriority1":{
          "type":"number"
        },
        "Ratio_CriticalRatioPriority2":{
          "type":"number"
        },
        "DocumentType":{
          "type":"string"
        },
        "SubledgerInactiveCode":{
          "type":"string"
        },
        "CompanyKey_RelatedOrder":{
          "type":"string"
        },
        "BillRevisionLevel":{
          "type":"string"
        },
        "RoutingRevisionLevel":{
          "type":"string"
        },
        "DrawingChange":{
          "type":"string"
        },
        "RoutingChange":{
          "type":"string"
        },
        "NewPartNumber":{
          "type":"string"
        },
        "ReasonForECO":{
          "type":"string"
        },
        "PhaseIn":{
          "type":"string"
        },
        "ExistingDisposition":{
          "type":"string"
        },
        "BOMChange":{
          "type":"string"
        },
        "UserReservedCode":{
          "type":"string"
        },
        "UserReservedDate":{
          "type":"string",
          "format":"date"
        },
        "UserReservedAmount":{
          "type":"number"
        },
        "UserReservedNumber":{
          "type":"integer"
        },
        "UserReservedReference":{
          "type":"string"
        },
        "UserID":{
          "type":"string"
        },
        "ProgramID":{
          "type":"string"
        },
        "WorkStationID":{
          "type":"string"
        },
        "DateUpdated":{
          "type":"string",
          "format":"date"
        },
        "TimeOfDay":{
          "type":"integer"
        },
        "ParentNumber":{
          "type":"integer"
        },
        "NextStatusWO":{
          "type":"string"
        },
        "CriticalityWorkOrder":{
          "type":"integer"
        },
        "EstimatedDowntimeHours":{
          "type":"number"
        },
        "ActualDowntimeHours":{
          "type":"number"
        },
        "ServiceAddressNumber":{
          "type":"integer"
        },
        "MeterPosition":{
          "type":"integer"
        },
        "ApprovalType":{
          "type":"string"
        },
        "AmountEstimatedLabor":{
          "type":"number"
        },
        "AmountEstimatedMaterial":{
          "type":"number"
        },
        "AmountEstimatedOther":{
          "type":"number"
        },
        "AmountActualLabor":{
          "type":"number"
        },
        "AmountActualMaterial":{
          "type":"number"
        },
        "Routing":{
          "type":"array",
          "items":{
            "$ref":"#/definitions/routing"
          }
        }
      }
    },
    "routing":{
      "type":"object",
      "properties":{
        "DocumentNumber":{
          "type":"integer"
        },
        "OrderType":{
          "type":"string"
        },
        "OrderSuffix":{
          "type":"string"
        },
        "TypeOfRouting":{
          "type":"string"
        },
        "Parent_ShortItemNumber":{
          "type":"integer"
        },
        "Kit2ndItemNumber":{
          "type":"string"
        },
        "3rdItemNumberKit":{
          "type":"string"
        },
        "Branch":{
          "type":"string"
        },
        "Line_CellIdentifier":{
          "type":"string"
        },
        "BusinessUnit":{
          "type":"string"
        },
        "AutoLoadDescription":{
          "type":"string"
        },
        "Description":{
          "type":"string"
        },
        "SequenceNumberOperations":{
          "type":"number"
        },
        "TypeOperationCode":{
          "type":"string"
        },
        "OperationStatusCodeWO":{
          "type":"string"
        },
        "InspectionCode":{
          "type":"string"
        },
        "TimeBasisCode":{
          "type":"string"
        },
        "LabororMachine":{
          "type":"string"
        },
        "PayPointCode":{
          "type":"string"
        },
        "PayPointStatus":{
          "type":"string"
        },
        "JobType_CraftCode":{
          "type":"string"
        },
        "AddressNumber":{
          "type":"integer"
        },
        "CriticalRatio":{
          "type":"number"
        },
        "SlackTimeRatio":{
          "type":"number"
        },
        "DateOrder_Transaction":{
          "type":"string",
          "format":"date"
        },
        "DateRequested":{
          "type":"string",
          "format":"date"
        },
        "DateStart":{
          "type":"string",
          "format":"date"
        },
        "DateCompletion":{
          "type":"string",
          "format":"date"
        },
        "ShiftCodeRequested":{
          "type":"string"
        },
        "ShiftCodeStart":{
          "type":"string"
        },
        "ShiftCodeCompleted":{
          "type":"string"
        },
        "PercentLeadtimeOverlap":{
          "type":"number"
        },
        "PercentOverlap":{
          "type":"number"
        },
        "PercentOperationalPlannedYield":{
          "type":"number"
        },
        "PercentCumulativePlannedYield":{
          "type":"number"
        },
        "SequenceNumberNextOperation":{
          "type":"number"
        },
        "CrewSize":{
          "type":"number"
        },
        "MoveHoursStandard":{
          "type":"number"
        },
        "QueueHoursStandard":{
          "type":"number"
        },
        "RunMachineStandard":{
          "type":"number"
        },
        "RunLaborStandard":{
          "type":"number"
        },
        "SetupLaborStandard":{
          "type":"number"
        },
        "RunMachineActual":{
          "type":"number"
        },
        "RunLaborActual":{
          "type":"number"
        },
        "HoursSetupLaborHoursActual":{
          "type":"number"
        },
        "FactorOperationShrinkageFactor":{
          "type":"number"
        },
        "UnitsOrder_TransactionQuantity":{
          "type":"number"
        },
        "UnitsQuantityCanceled_Scrapped":{
          "type":"number"
        },
        "QuantityShipped":{
          "type":"number"
        },
        "UnitsQuantityatOperation":{
          "type":"number"
        },
        "RatePiecework":{
          "type":"number"
        },
        "UnitOfMeasureAsInput":{
          "type":"string"
        },
        "HoursUnaccountedSetupLabor":{
          "type":"number"
        },
        "HoursUnaccountedMachineHours":{
          "type":"number"
        },
        "AmountUnaccountedDirectLabor":{
          "type":"number"
        },
        "AmountUnaccountedSetupLabor":{
          "type":"number"
        },
        "AmountUnaccountedMachine":{
          "type":"number"
        },
        "UnitOrTagNumber":{
          "type":"string"
        },
        "MessageNumber":{
          "type":"string"
        },
        "ProjectBusinessUnit":{
          "type":"string"
        },
        "ObjectAccount":{
          "type":"string"
        },
        "Subsidiary":{
          "type":"string"
        },
        "Primary_LastSupplierNumber":{
          "type":"integer"
        },
        "CompanyKey_RelatedOrder":{
          "type":"string"
        },
        "Related_PO_SO_WO_Number":{
          "type":"string"
        },
        "Related_PO_SO_WO_OrderType":{
          "type":"string"
        },
        "Related_PO_SO_LineNumber":{
          "type":"number"
        },
        "DocumentType":{
          "type":"string"
        },
        "UserReservedCode":{
          "type":"string"
        },
        "UserReservedDate":{
          "type":"string",
          "format":"date"
        },
        "UserReservedAmount":{
          "type":"number"
        },
        "UserReservedReference":{
          "type":"string"
        },
        "UserReservedNumber":{
          "type":"integer"
        },
        "UserID":{
          "type":"string"
        },
        "ProgramID":{
          "type":"string"
        },
        "WorkStationID":{
          "type":"string"
        },
        "DateUpdated":{
          "type":"string",
          "format":"date"
        },
        "TimeOfDay":{
          "type":"integer"
        },
        "Location":{
          "type":"string"
        },
        "ResourceUnitsConsumed":{
          "type":"number"
        },
        "CapacityUnitOfMeasure":{
          "type":"string"
        },
        "WorkcenterBranch":{
          "type":"string"
        },
        "RunMachineCurrent":{
          "type":"number"
        },
        "RunLaborCurrent":{
          "type":"number"
        },
        "SetupLaborCurrent":{
          "type":"number"
        },
        "CostComponent":{
          "type":"string"
        },
        "Activity-BasedCostingActivityCode":{
          "type":"string"
        },
        "AssetItemNumber":{
          "type":"integer"
        },
        "AmountUnaccountedScrap":{
          "type":"number"
        },
        "UnitsUnaccountedScrap":{
          "type":"number"
        },
        "HoursUnaccountedDirectLabor":{
          "type":"number"
        },
        "RunLaborRate":{
          "type":"number"
        },
        "RunMachineRate":{
          "type":"number"
        },
        "SetupLaborRate":{
          "type":"number"
        },
        "ConstraintsFlag":{
          "type":"string"
        },
        "TimeScheduledStart_HH_MM_SS":{
          "type":"integer"
        },
        "TimeScheduledEnd_HH_MM_SS":{
          "type":"integer"
        },
        "TimeCompleted":{
          "type":"integer"
        },
        "DateActualStart":{
          "type":"string",
          "format":"date"
        },
        "TimeStart_HH_MM_SS":{
          "type":"integer"
        },
        "CompetencyType":{
          "type":"string"
        },
        "CompetencyCode":{
          "type":"string"
        },
        "CompetencyLevelFrom":{
          "type":"number"
        },
        "CompetencyLevelTo":{
          "type":"number"
        },
        "RuleMatchFlag":{
          "type":"string"
        },
        "AddressNumberManager":{
          "type":"integer"
        },
        "Supervisor":{
          "type":"integer"
        },
        "AddressNumberAssignedTo":{
          "type":"integer"
        },
        "MaintenanceScheduleFlag":{
          "type":"string"
        },
        "ResourcesAssigned":{
          "type":"string"
        }
      }
    }
  }
}
}

}
