import java.io.IOException;
import java.util.Map;

import javax.xml.bind.DataBindingException;

import com.ibm.websphere.http.data.bindings.HTTPStreamDataBinding;
import com.ibm.websphere.http.data.streams.HTTPInputStream;
import com.ibm.websphere.http.data.streams.HTTPOutputStream;
import com.ibm.websphere.http.headers.HTTPControl;
import com.ibm.websphere.http.headers.HTTPHeaders;

import commonj.connector.runtime.BindingContext;
import commonj.sdo.DataObject;

public class HTTPGetRequestParser implements HTTPStreamDataBinding, BindingContext
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void convertFromNativeData(HTTPInputStream arg0) throws DataBindingException, IOException
	{
		throw new DataBindingException("Unable to convert data", null);
	}

	public DataObject getDataObject() throws DataBindingException
	{
		return null;
	}

	public void setBindingContext(Map arg0)
	{
		
	}

	@Override
	public void convertToNativeData()
	throws commonj.connector.runtime.DataBindingException {
		// TODO Auto-generated method stub

	}

	@Override
	public HTTPControl getControlParameters() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public HTTPHeaders getHeaders() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isBusinessException() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void setBusinessException(boolean arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void setControlParameters(HTTPControl arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void setHeaders(HTTPHeaders arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void write(HTTPOutputStream arg0) throws IOException {
		// TODO Auto-generated method stub

	}

	@Override
	public void setDataObject(DataObject arg0)
	throws commonj.connector.runtime.DataBindingException {
		// TODO Auto-generated method stub

	}
}