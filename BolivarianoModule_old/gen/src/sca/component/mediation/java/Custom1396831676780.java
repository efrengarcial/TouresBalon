package sca.component.mediation.java;

import com.ibm.websphere.sibx.smobo.ServiceMessageObject;
import com.ibm.wsspi.sibx.mediation.InputTerminal;
import com.ibm.wsspi.sibx.mediation.MediationBusinessException;
import com.ibm.wsspi.sibx.mediation.MediationConfigurationException;
import com.ibm.wsspi.sibx.mediation.OutputTerminal;
import com.ibm.wsspi.sibx.mediation.esb.ESBMediationPrimitive;
import commonj.sdo.DataObject;
import com.ibm.wsspi.sibx.mediation.MediationServices;

/**
 * @generated
 *  Flow: Med-Bolivariano Interface: TransportServiceIF Operation: checkAvailability Type: response Custom Mediation: customMediation
 */
public class Custom1396831676780 extends ESBMediationPrimitive {

	private InputTerminal in;
	private OutputTerminal out;

	/* state of primitive initialization */
	private boolean __initPassed = false;

	/* primitive display name */
	private String __primitiveDisplayName = null;

	/* 
	 * @generated
	 * (non-Javadoc)
	 * @see com.ibm.wsspi.sibx.mediation.Mediation#init()
	 */
	public void init() throws MediationConfigurationException {
		/* Get the mediation service */
		MediationServices mediationServices = this.getMediationServices();
		if (mediationServices == null)
			throw new MediationConfigurationException(
					"MediationServices object not set.");

		/* Get the primitive display name for use in exception messages */
		__primitiveDisplayName = mediationServices.getMediationDisplayName();

		in = mediationServices.getInputTerminal("in");
		if (in == null) {
			throw new MediationConfigurationException(
					"No terminal named in defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		out = mediationServices.getOutputTerminal("out");
		if (out == null) {
			throw new MediationConfigurationException(
					"No terminal named out defined for mediation primitive "
							+ __primitiveDisplayName);
		}

		/* Initialization completed */
		__initPassed = true;
	}

	/* 
	 * @generated
	 * (non-Javadoc)
	 * @see com.ibm.wsspi.sibx.mediation.Mediation#mediate(com.ibm.wsspi.sibx.mediation.InputTerminal, commonj.sdo.DataObject)
	 */
	public void mediate(InputTerminal inputTerminal, DataObject message)
			throws MediationConfigurationException, MediationBusinessException {
		/* If initialization didn't complete, try again */
		if (!__initPassed) {
			init();
		}

		try {
			doMediate(inputTerminal, (ServiceMessageObject) message);
		} catch (Exception e) {
			if (e instanceof MediationBusinessException) {
				throw (MediationBusinessException) e;
			} else if (e instanceof MediationConfigurationException) {
				throw (MediationConfigurationException) e;
			} else {
				throw new MediationBusinessException(e);
			}
		}
	}

	/**
	 * @generated
	 */
	public void doMediate(InputTerminal inputTerminal, ServiceMessageObject smo)
			throws MediationConfigurationException, MediationBusinessException {
		/**
		 * GENERATED COMMENT - DO NOT MODIFY
		 * Variables:  for output terminals - out (com.ibm.wsspi.sibx.mediation.OutputTerminal)
		 *             for user properties - <No user properties defined>
		 * Inputs:     inputTerminal (com.ibm.wsspi.sibx.mediation.InputTerminal), smo (com.ibm.websphere.sibx.smobo.ServiceMessageObject)
		 * Exceptions: com.ibm.wsspi.sibx.mediation.MediationConfigurationException, com.ibm.wsspi.sibx.mediation.MediationBusinessException
		 */

		commonj.sdo.DataObject __smo = (commonj.sdo.DataObject) smo;
		java.util.List travels_orig = __smo.getDataObject("body")
				.getDataObject("checkAvailabilityResponse").getDataObject(
						"response").getList("Content");

		commonj.sdo.DataObject request = (commonj.sdo.DataObject) smo
				.getContext().getCorrelation();
		String ciudadOrigen = request.getString("ciudadOrigen");
		String ciudadDestino = request.getString("ciudadDestino");

		java.util.List travels_new = new java.util.ArrayList();
		int travels_orig_size = travels_orig.size();
		for (int i = 0; i < travels_orig_size; i++) {
			commonj.sdo.DataObject travel = (commonj.sdo.DataObject) travels_orig
					.get(i);
			if (travel.getString("ciudadOrigen").equals(ciudadOrigen)
					&& travel.getString("ciudadDestino").equals(ciudadDestino)) {
				travels_new.add(travel);
			}
		}

		__smo.getDataObject("body").getDataObject("checkAvailabilityResponse")
				.getDataObject("response").setList("Content", travels_new);

		out.fire(__smo); // propagate the service message object to the primitive that is wired to the 'out' terminal

		//out.fire(smo); // propagate the service message object to the primitive that is wired to the 'out' terminal
	}
}
