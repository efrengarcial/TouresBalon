  
package export;	

import commonj.connector.runtime.InboundNativeDataRecord;
import com.ibm.websphere.sca.j2c.data.J2CRecord;
import com.ibm.wsspi.sca.j2c.inbound.InboundListenerImpl;
/**
 * Generated code. DO NOT EDIT.
 * @generated
 */
public class JDBCExportListenerImpl extends InboundListenerImpl implements com.ibm.j2ca.base.ExtendedInboundListener { 
private static final long serialVersionUID = 7110175216435025451L;

  /**
   * @generated
   */
  public javax.resource.cci.Record onMessage(javax.resource.cci.Record arg0, javax.resource.cci.InteractionSpec arg1) throws javax.resource.ResourceException {
    java.lang.Object[] __args = new java.lang.Object[] { arg0 ,arg1 };
    InboundNativeDataRecord __record = new J2CRecord();
    __record.setNativeData(__args);
    
    InboundNativeDataRecord __result = (InboundNativeDataRecord) super.invoke(__record);
    Object [] __obj = __result.getNativeData();
    return (javax.resource.cci.Record) __obj[0];		
        
  }
  /**
   * @generated
   */
  public javax.resource.cci.Record onMessage(commonj.connector.runtime.InboundInteractionSpec arg0, javax.resource.cci.Record arg1) throws javax.resource.ResourceException {
    java.lang.Object[] __args = new java.lang.Object[] { arg0 ,arg1 };
    InboundNativeDataRecord __record = new J2CRecord();
    __record.setNativeData(__args);
    
    InboundNativeDataRecord __result = (InboundNativeDataRecord) super.invoke(__record);
    Object [] __obj = __result.getNativeData();
    return (javax.resource.cci.Record) __obj[0];		
        
  }
  /**
   * @generated
   */
  public void onNotification(javax.resource.cci.Record arg0, javax.resource.cci.InteractionSpec arg1) throws javax.resource.ResourceException {
    java.lang.Object[] __args = new java.lang.Object[] { arg0 ,arg1 };
    InboundNativeDataRecord __record = new J2CRecord();
    __record.setNativeData(__args);
    
    super.invoke(__record);
    return;
        
  }
  /**
   * @generated
   */
  public void onNotification(commonj.connector.runtime.InboundInteractionSpec arg0, javax.resource.cci.Record arg1) throws javax.resource.ResourceException {
    java.lang.Object[] __args = new java.lang.Object[] { arg0 ,arg1 };
    InboundNativeDataRecord __record = new J2CRecord();
    __record.setNativeData(__args);
    
    super.invoke(__record);
    return;
        
  }

}


