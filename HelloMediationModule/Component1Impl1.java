
import commonj.sdo.DataObject;
import com.ibm.websphere.sca.ServiceManager;

public class Component1Impl1 {
	/**
	 * Default constructor.
	 */
	public Component1Impl1() {
		super();
	}

	/**
	 * Return a reference to the component service instance for this implementation
	 * class.  This method should be used when passing this service to a partner reference
	 * or if you want to invoke this component service asynchronously.    
	 *
	 * @generated (com.ibm.wbit.java)
	 */
	@SuppressWarnings("unused")
	private Object getMyService() {
		return (Object) ServiceManager.INSTANCE.locateService("self");
	}

	/**
	 * Method generated to support implementation of operation "returnGreeting" defined for WSDL port type 
	 * named "HandleGreetingMessage".
	 * 
	 * The presence of commonj.sdo.DataObject as the return type and/or as a parameter 
	 * type conveys that it is a complex type. Please refer to the WSDL Definition for more information 
	 * on the type of input, output and fault(s).
	 */
	public String returnGreeting(DataObject inputPartyInfo) {
		// To get or set attributes for DataObject inputPartyInfo, use the APIs as shown below:
		// To set a string attribute in inputPartyInfo, use inputPartyInfo.setString(stringAttributeName, stringValue)
		// To get a string attribute in inputPartyInfo, use inputPartyInfo.getString(stringAttributeName)
		// To set a dataObject attribute in inputPartyInfo, use inputPartyInfo.setDataObject(stringAttributeName, dataObjectValue)
		// To get a dataObject attribute in inputPartyInfo, use inputPartyInfo.getDataObject(stringAttributeName)
		return inputPartyInfo.getString("age");
	}

}