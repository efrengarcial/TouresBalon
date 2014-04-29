/**
 * ##[lineageStampBegin]##
 * ##[generatedBy:/PhpRESTAppLib/POrderProcIF.wsdl]##
 * ##[lineageStampEnd]##
 */
package phprestapplib.porderprocif;

import com.ibm.websphere.sca.ServiceBusinessException;
import commonj.sdo.DataObject;

/**
 * @generated (com.ibm.wbit.java.core)
 * An interface used for enabling a static programming model for the service. 
 * The methods provide synchronous invocations of the service operations.
 */
public interface POrderProcIF {
	public static final String PORTTYPE_NAME = "{http://PhpRESTAppLib/POrderProcIF}POrderProcIF";

	/**
	 * @generated (com.ibm.wbit.java.core)
	 * The "submitPOrder" operation on WSDL port "ns1:POrderProcIF"
	 */
	public void submitPOrder(DataObject submitReq)
			throws ServiceBusinessException;

}
