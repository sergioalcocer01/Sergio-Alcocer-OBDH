

#include <public/systemmng_iface_v1.h>



	// ******************* HANDLING IRQ 18********************

Pr_IRQEvent	SystemMng::EDROOMEventIRQ18(18);
Pr_SemaphoreBin	SystemMng::EDROOMSemEndIRQ18(0);


		// ******************* DATA ***************

TEDROOMByte	SystemMng::	EDROOMVarIRQ18;


		// ******************* DATA POOL *******

SystemMng::CEDROOMPOOLIRQ18TEDROOMByte	SystemMng::EDROOMPoolIRQ18;


		// ******************* Aux IRQ Handler **************

void 	SystemMng::EDROOMIRQ18HandlerTopHalfFunction(void){

	bool EDROOMIRQ18BottomHalfSignal=true;
	EDROOMVarIRQ18=leon3_getchar();

	 

	EDROOMIRQ18BottomHalfSignal=true;

	 

	switch(EDROOMVarIRQ18){

	    case('T'):

	    case('t'):

	    case('I'):

	    case('i'):

	        break;

	 

	  default:

	     EDROOMIRQ18BottomHalfSignal=false;

	}

	if (EDROOMIRQ18BottomHalfSignal)
		EDROOMEventIRQ18.Signal();

}



		// ******************* IRQ Handler **************

Pr_IRQHandler_RetType	SystemMng::EDROOMIRQ18Handler(void){

	EDROOMIRQ18HandlerTopHalfFunction();

}



		// ******************* IRQ Idle Handler **************

Pr_IRQHandler_RetType	SystemMng::EDROOMIRQ18IdleHandler(void){

}



		// ******************* Bottom Half Task **************

Pr_TaskRV_t 	SystemMng::EDROOMIRQ18BottomHalfTask(Pr_TaskP_t){

	bool endTask=false;

	do
	{

		EDROOMEventIRQ18.Wait();

		bool EDROOMIRQ18SendMsgToCmp=true;

		if(!EDROOMSemEndIRQ18.WaitCond()){

			if(EDROOMIRQ18SendMsgToCmp){
				TEDROOMByte	*pEDROOMVarIRQ;

				pEDROOMVarIRQ=EDROOMPoolIRQ18.AllocData();

				*pEDROOMVarIRQ=EDROOMVarIRQ18;

				SerialCommand.NewIRQMsg(EDROOMIRQsignal, pEDROOMVarIRQ, &EDROOMPoolIRQ18);

			}
			Pr_IRQManager::EnableIRQ(18);

		}else endTask=1;

	}while(!endTask);

}



		// ******************* IRQPort **************

CEDROOMIRQInterface SystemMng::SerialCommand( 
		SystemMng::EDROOMIRQ18Handler 
		,SystemMng::EDROOMIRQ18IdleHandler 
		,SystemMng::EDROOMEventIRQ18
		,SystemMng::EDROOMSemEndIRQ18
		,18 );




// ******************************* CONSTRUCTOR ************************************



SystemMng::SystemMng(TEDROOMComponentID id,
		TEDROOMUInt32 roomNumMaxMens,
		TEDROOMPriority roomtaskPrio,
		TEDROOMStackSizeType roomStack,
		CEDROOMMemory *pActorMemory ) : 

		CEDROOMComponent(id,EDROOMprioMINIMUM+1,roomNumMaxMens,
				roomtaskPrio,roomStack, pActorMemory ),

		// ***************   BOTTOM HALF IRQ TASKS  ********************

		EDROOMIRQ18BottomHalfT( EDROOMIRQ18BottomHalfTask,EDROOMprioURGENT,256),

		// ***************	Top State  *****************

		edroomTopState(*this,pActorMemory)


{


}


//**************************************************************************
//**************************   PUBLIC METHODS  *****************************



//************************** EDROOMConfig **********************************


int SystemMng::EDROOMConfig()
{


 return 0; 
}



//************************** EDROOMStart **********************************

int SystemMng::EDROOMStart()
{


	//***************** CEDROOMComponent::EDROOMStart*********

	CEDROOMComponent::EDROOMStart(); 	// Call to EDROOMStart method of CEDROOMComponent

	return 0;
}


//**************************************************************************
//***************************    PROTECTED METHODS *************************



//*****************************  EDROOMBehaviour ***************************



void SystemMng::EDROOMBehaviour()
{

	edroomTopState.EDROOMInit();
	edroomTopState.EDROOMBehaviour();


		// *************** PUERTOS IRQ ********************

	SerialCommand.EndIRQHandlerTask();
}




//********************* ComponentIsFinished **********************************


#ifdef _EDROOM_SYSTEM_CLOSE

bool SystemMng::EDROOMIsComponentFinished()
{


	return ( CEDROOMComponent::EDROOMIsComponentFinished());

}

#endif


//****************** EDROOMMemory::SetMemory *******************************

void SystemMng::CEDROOMMemory::SetMemory(TEDROOMUInt32 numMessages_ ,
		CEDROOMMessage * MessagesMem_,
		bool * MessagesMemMarks_,
		TEDROOMUInt32 numberOfNodes_,
		CEDROOMQueue::CQueueNode * QueueNodesMem_,
		bool * QueueNodesMemMarks_)
{

		CEDROOMComponentMemory::SetMemory( numMessages_,MessagesMem_, MessagesMemMarks_,
			numberOfNodes_,QueueNodesMem_, QueueNodesMemMarks_, QueueHeads);


}

