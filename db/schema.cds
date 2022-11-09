namespace sap.ui.energymanagement;
using { managed } from '@sap/cds/common';

  entity energy {
    key ID      : UUID  @(Core.Computed : true);
    title       : String(100);
    prio        : String(5);
    descr       : String;
    impact      : Integer;
  }
		entity GLOBAL_PARAMETERS {
			Key ID: String(36);
			PARAM_TYPE: String(50);
			PARAM_SUBTYPE: String(50);
			PARAM_STR_VALUE: String(150);
			PARAM_NUM_VALUE: Integer;
    }

    entity ORDERS {
			Key ID :String(36);
			PARENT_ID: String(36);
			INST_NUMBER: String(20);
			PEER_ID:String(36);
			ORD_VALID_FROM: Timestamp;
			ORD_VALID_TO: Timestamp;
			ORD_STATUS: String(1);
			ORD_TYPE: String(1); // S-Sales Order, P-Purchase Order
			ORD_QTT: Decimal(10,3);
			ORD_PRICE: Decimal(10,3);
			ORD_PERIOD_INITIAL: Timestamp;
			ORD_PERIOD_FINAL: Timestamp;
			//CONTROLL
			STATUS: String(1);
			CREATION_DATE: Timestamp;
			LAST_UPDATE: Timestamp;
			UPDATED_BY: String(36);
		}
		entity CONTRACT_AGREEMENTS {
			Key ID : String(70);
			AGR_ORD_QTT: Decimal(10,3);
			AGR_ORD_PRICE: Decimal(10,3);
			AGR_PERIOD_INITIAL: Timestamp;
			AGR_PERIOD_FINAL: Timestamp;
			AGR_STATUS: String(1);
			//Sales Order REF
			SAL_ORD_ID: String(36);
			//Purchase Order REF
			PUR_ORD_ID: String(36);
			//CONTROLL
			STATUS: String(1);
			CREATION_DATE: Timestamp;
			LAST_UPDATE: Timestamp;
			UPDATED_BY: String(36);
		}
		entity USERS {
			Key ID : String(36);
			NAME:  String(100);
			LAST_NAME:  String(100);
			EMAIL:String(50);
			USERNAME: String(50);
			PHONE: String(20);
			FISCAL_NUMBER: String(13);
			TYPE: String(1); // P-Prosumer, C-Consumer
			//REF		
			ADDRESS_ID: String(36);
			STATUS: String(1);
			CREATION_DATE: Timestamp;
			LAST_UPDATE: Timestamp;
			UPDATED_BY: String(36);
		}
		entity ADDRESSES {
			Key ID : String(36);
			COUNTRY: String(30);
			STATE: String(30);
			CITY: String(30);
			POSTAL_CODE:String(10);
			STREET:String(100);
			NUMBER: String(10);
			COMPLEMENT: String(10);
			STATUS: String(1);
			CREATION_DATE: Timestamp;
			LAST_UPDATE: Timestamp;
			UPDATED_BY: String(36);
		}
		entity INSTALLATIONS {
			Key ID : String(36);
			INST_NUMBER: String(20);
			INST_NAME:String(40);
			PRODUCTION_CAPACITY: Decimal(10,3);
			TYPE: String(1); // P-Prosumer, C-Consumer
			//REF
			USER_ID: String(36);		
			ADDRESS_ID: String(36);
			STATUS: String(1);
			CREATION_DATE: Timestamp;
			LAST_UPDATE: Timestamp;
			UPDATED_BY: String(36);
		}
		entity MEASUREMENTS {
			Key ID: String(36);
			INST_NUMBER: String(20);
			GENERATED: String(150);
			CONSUMPTION: String(150);
			CREATION_DATE: Timestamp;
		}
	