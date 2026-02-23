#ifndef SYSTEMMNG_H_
#define SYSTEMMNG_H_

//******************************************************************************
// EDROOM Service Library

#define _EDROOM_IS_EMBEDDED_

#include <public/edroomsl_iface_v1.h>

//******************************************************************************
// Required software interfaces

#include <public/leon3_uart_drv_v1.h>
#include <public/nexys_gpio_drv_v1.h>


/**
 * \class   SystemMng
 *
 */
class SystemMng: public CEDROOMComponent {

public:

	/**
	 * \enum TEDROOMSystemMngSignal
	 * \brief Component Signal Enum Type
	 *
	 */
	 enum TEDROOMSystemMngSignal { EDROOMSignalTimeout, 
							EDROOMSignalDestroy, 
							EDROOMIRQsignal, 
							SDisplaysStart, 
							SIncreaseDisplays, 
							SDisplaysReady, 
							SLEDStart, 
							SToggleLEDShift, 
							SLEDReady, 
							SLEDShiftToggled };

	/**
	 * \class SystemMng::CEDROOMMemory
	 * \brief Component Memory
	 *
	 */
	class CEDROOMMemory: public CEDROOMComponentMemory{

		private:

			//!Array of Message Queue Heads, one for each priority
			CEDROOMQueue::CQueueHead QueueHeads[EDROOMprioMINIMUM+1];

	// ********************************************************************
	// ******************* Component Message Data Pools *******************
	// ********************************************************************

		public:

			//! TEDROOMUInt8 Data Pool Memory
			TEDROOMUInt8	poolTEDROOMUInt8[10+1];
			//! TEDROOMUInt8 Data Pool Marks Memory
			bool	poolMarkTEDROOMUInt8[10];


			/** \brief This function is used for setting the Component Memory
			 * 
			 * \param numberOfMsgs number of messages that the component can store
			 * \param msgsMemory memory for the messages that the component can store
			 * \param msgsMemoryMarks memory marks for the messages that the component can store
			 * \param numberOfNodes number of nodes that the component needs
			 * \param queueNodesMemory memory for the component message queues 
			 * \param queueNodesMemoryMarks memory marks for the component message queues 
			 */
			void SetMemory(TEDROOMUInt32 numberOfMsgs
						, CEDROOMMessage * msgsMemory
						, bool * msgsMemoryMarks
						, TEDROOMUInt32 numberOfNodes
						, CEDROOMQueue::CQueueNode * queueNodesMemory
						, bool * queueNodesMemoryMarks);

	};


	// ********************************************************************
	//******************  Component Communication Ports *******************
	// ********************************************************************

	//! DisplaysMngCtrl Component Port
	CEDROOMInterface	DisplaysMngCtrl;
	//! LEDMngCtrl Component Port
	CEDROOMInterface	LEDMngCtrl;


	// ********************************************************************
	// ************************* Component IRQ Handling *******************
	// ********************************************************************

	// ********************************
	// Handling IRQ vector 18

	//! Event for trigger the bottom half associated to the IRQ vector 18
	static Pr_IRQEvent	EDROOMEventIRQ18;
	//! Binary Semaphore for signal the end of the bottom half of the IRQ vector 18
	static Pr_SemaphoreBin	EDROOMSemEndIRQ18;
	//! IRQ Handler for the IRQ vector 18
	static Pr_IRQHandler_RetType	EDROOMIRQ18Handler(void);
	//! Top Half Function for IRQ Handler  18
	static void	EDROOMIRQ18HandlerTopHalfFunction(void);
	//! Idle IRQ Handler for the IRQ vector 18
	static Pr_IRQHandler_RetType	EDROOMIRQ18IdleHandler(void);
	//! Bottom Half Task Function for the IRQ vector 18
	static Pr_TaskRV_t 	EDROOMIRQ18BottomHalfTask(Pr_TaskP_t);
	//! Bottom Half Pr_Task Object for the IRQ vector 18
	Pr_Task 	EDROOMIRQ18BottomHalfT;
	//! Component Port associated to the IRQ vector 18
	static CEDROOMIRQInterface	SerialCommand;
	//! Global variable required for the botton half of the IRQ vector 18
	static TEDROOMByte	EDROOMVarIRQ18;
	/**
	 * \class CEDROOMPOOLIRQ18TEDROOMByte
	 * \brief Data Pool Class required for the botton half of the IRQ vector 18
	 *
	 */
	class CEDROOMPOOLIRQ18TEDROOMByte:public CEDROOMProtectedMemoryPool {
		//! Data Pool Memory
		TEDROOMByte mem[10+1];
		//! Data Pool Memory Marks
		bool marks[10];
		public:
		//! Constructor
		CEDROOMPOOLIRQ18TEDROOMByte():CEDROOMProtectedMemoryPool(10,mem,marks, sizeof(TEDROOMByte)){}
		//! Function for allocating a data from the pool
		TEDROOMByte	* AllocData(){ return ( TEDROOMByte	* ) CEDROOMProtectedMemoryPool::AllocData();}
	};
	 //!Data Pool required for the botton half of the IRQ vector 18
	static CEDROOMPOOLIRQ18TEDROOMByte	EDROOMPoolIRQ18;




	// *************************************************************************
	// **************************** Frame Service Methods	********************
	// *************************************************************************



	//! Constructor
	SystemMng(TEDROOMComponentID id, TEDROOMUInt32 roomNumMaxMens, TEDROOMPriority roomtaskPrio, 
		TEDROOMStackSizeType roomStack, CEDROOMMemory * pActorMemory );




	//! Component Configuration 
	 int EDROOMConfig();


	//! Component Start 
	 int EDROOMStart();




	#ifdef _EDROOM_SYSTEM_CLOSE

	//! Method that returns true if component is finished 
	bool EDROOMIsComponentFinished();


	#endif

protected:



	//! Component behaviour 
	virtual void EDROOMBehaviour();




public:

	// *****************************	Behaviour  *************************

	// ***********************************************************************

	// class EDROOM_CTX_Top_0

	// ***********************************************************************



	class EDROOM_CTX_Top_0 {

	protected:

	/**
	 * \enum TEDROOMSystemMngSignal
	 * \brief Component Signal Enum Type
	 *
	 */
	enum TEDROOMSystemMngSignal { EDROOMSignalTimeout,
		EDROOMSignalDestroy,
		EDROOMIRQsignal,
		SDisplaysStart,
		SIncreaseDisplays,
		SDisplaysReady,
		SLEDStart,
		SToggleLEDShift,
		SLEDReady,
		SLEDShiftToggled };


		friend class SystemMng;

		//!component reference
		SystemMng &EDROOMcomponent;

		//!Current message pointer reference
		CEDROOMMessage * &Msg;

		//!Synchronous message back pointer reference
		CEDROOMMessage * &MsgBack;

		//!Component ports
		CEDROOMInterface & DisplaysMngCtrl;
		CEDROOMInterface & LEDMngCtrl;
		CEDROOMIRQInterface & SerialCommand;


		//! State Identifiers
		enum TEDROOMStateID{I,
			StartUp,
			Ready};

		//!Transition Identifiers
		enum TEDROOMTransitionID{Init,
			SubSysReady,
			GetCommand,
			GetCommand_ToggleLEDShift,
			GetCommand_IncraseDisplays,
			GetCommand_NotValidCommand,
			EDROOMMemoryTrans };

		//!Constants
		const TEDROOMUInt8 CLEDPerido100Ms;


		//!Variables
		TEDROOMByte &VCommand;


		// Pools *************************************************

		class CEDROOMPOOLTEDROOMUInt8:public CEDROOMProtectedMemoryPool {
			public:
			CEDROOMPOOLTEDROOMUInt8(TEDROOMUInt32 elemCount,TEDROOMUInt8 *pMem, bool *pMarks);
			TEDROOMUInt8	* AllocData();
		};
		CEDROOMPOOLTEDROOMUInt8	& EDROOMPoolTEDROOMUInt8;


		//!Constructor
		EDROOM_CTX_Top_0 (SystemMng &act,
				TEDROOMByte & EDROOMpVarVCommand,
				CEDROOMPOOLTEDROOMUInt8 & EDROOMpPoolTEDROOMUInt8 );

		//!Copy constructor
		EDROOM_CTX_Top_0 (EDROOM_CTX_Top_0 &context);

	public:

		/**
		 * \brief Search Context transition 
		 * \param edroomCurrentTrans returns the context transition 

		 * \return true if context transition is found 

		 */
		bool EDROOMSearchContextTrans(TEDROOMTransId &edroomCurrentTrans);

		//! \brief Get new message from the Queue

		void EDROOMNewMessage()
		{ EDROOMcomponent.EDROOMNewMsg(); }

		/**
		 * \brief Get and Clear the Error Flags 
		 * \return the error flags  

		 */
		 TEDROOMUInt32 GetAndClearErrorFlags(){ return EDROOMcomponent.GetAndClearErrorFlags();}

		// User-defined Functions

		/**
		 * \brief  
		 */
		void	FGetCommand();

		/**
		 * \brief  
		 */
		void	FInit();

		/**
		 * \brief  
		 */
		void	FInvokeToggleLEDShift();

		/**
		 * \brief  
		 */
		void	FSendIncreaseDisplays();

		/**
		 * \brief  
		 */
		bool	GCmdIsIncreaseDisplays();

		/**
		 * \brief  
		 */
		bool	GCmdIsToggleLEDShift();

	};

	// ***********************************************************************

	// class EDROOM_CTX_StartUp_1

	// ***********************************************************************



	class EDROOM_CTX_StartUp_1 : public EDROOM_CTX_Top_0 {

	protected:

		//! State Identifiers
		enum TEDROOMStateID{WaitLEDReady,
			WaitDisplaysReady};

		//!Transition Identifiers
		enum TEDROOMTransitionID{StartLED,
			StartDisplay,
			DisplaysReady,
			EDROOMMemoryTrans };





		//!Constructor

		EDROOM_CTX_StartUp_1( EDROOM_CTX_Top_0 &context );

		//!Copy constructor

		EDROOM_CTX_StartUp_1( EDROOM_CTX_StartUp_1 &context );

	public:

		/**
		 * \brief Search Context transition 
		 * \param edroomCurrentTrans returns the context transition

		 * \return true if context transition is found

		 */
		bool EDROOMSearchContextTrans(TEDROOMTransId &edroomCurrentTrans);

		// User-defined Functions

		/**
		 * \brief  
		 */
		void	FSendDisplaysStart();

		/**
		 * \brief  
		 */
		void	FSendLEDStart();

	};

	// ***********************************************************************

	// class EDROOM_SUB_StartUp_1

	// ***********************************************************************



	class EDROOM_SUB_StartUp_1:public EDROOM_CTX_StartUp_1{ 

	protected:



		//!current state identifier
		EDROOM_CTX_StartUp_1::TEDROOMStateID edroomCurrentState;

		//!next state identifier
		EDROOM_CTX_StartUp_1::TEDROOMStateID edroomNextState;

	public:

		EDROOM_CTX_Top_0::TEDROOMStateID edroomStateID;

		//!Constructor
		EDROOM_SUB_StartUp_1(EDROOM_CTX_Top_0::TEDROOMStateID stateID, EDROOM_CTX_Top_0 &context);

		//!Context Arrival

		TEDROOMTransId Arrival(EDROOM_CTX_Top_0::TEDROOMTransitionID);

		//! Context Init

		void EDROOMInit();

		// ***********************************************************************

		// Leaf SubState WaitLEDReady

		// ***********************************************************************



		TEDROOMTransId EDROOMWaitLEDReadyArrival();

		// ***********************************************************************

		// Leaf SubState WaitDisplaysReady

		// ***********************************************************************



		TEDROOMTransId EDROOMWaitDisplaysReadyArrival();

	};

	// ***********************************************************************

	// class EDROOM_SUB_Top_0

	// ***********************************************************************



	class EDROOM_SUB_Top_0 : public EDROOM_CTX_Top_0 {

	protected:

	EDROOM_SUB_StartUp_1 EDROOMStartUp;


		//!current state identifier
		EDROOM_CTX_Top_0::TEDROOMStateID edroomCurrentState;

		//!next state identifier
		EDROOM_CTX_Top_0::TEDROOMStateID edroomNextState;

		//!Variables
		TEDROOMByte VCommand;


		// Pools**************************************************
		CEDROOMPOOLTEDROOMUInt8	EDROOMPoolTEDROOMUInt8;


	public:

		//! Constructor
		EDROOM_SUB_Top_0 (SystemMng &act, CEDROOMMemory *pEDROOMMemory  );


		//! Top Context Behaviour 

		void EDROOMBehaviour();

		//!Top Context Init
		void EDROOMInit();

		//! Initial substate arrival
		TEDROOMTransId EDROOMIArrival();

		// ***********************************************************************

		// Leaf SubState Ready

		// ***********************************************************************



		TEDROOMTransId EDROOMReadyArrival();

	};

protected:

	//!Top State
	EDROOM_SUB_Top_0 edroomTopState;



};
#endif
