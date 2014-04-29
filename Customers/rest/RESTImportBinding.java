package rest;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.xpath.XPathAPI;
import org.w3c.dom.Document;

import com.ibm.websphere.bo.BOFactory;
import com.ibm.websphere.http.data.bindings.HTTPStreamDataBinding;
import com.ibm.websphere.http.data.bindings.HTTPStreamDataBindingXML;
import com.ibm.websphere.http.data.streams.HTTPInputStream;
import com.ibm.websphere.http.data.streams.HTTPOutputStream;
import com.ibm.websphere.http.headers.HTTPControl;
import com.ibm.websphere.http.headers.HTTPHeaders;
import com.ibm.websphere.sca.ServiceManager;
import commonj.connector.runtime.DataBindingException;
import commonj.sdo.DataObject;
import commonj.sdo.Property;


public class RESTImportBinding implements HTTPStreamDataBinding 
{

	private DataObject fieldDataObject;
	private HTTPControl httpControl;
	private HTTPHeaders httpHeaders;
	private boolean isBusinessException = false;
	private transient ByteArrayOutputStream nativeData;

	public RESTImportBinding() {
		nativeData = new ByteArrayOutputStream();
	}

	public void convertToNativeData() throws DataBindingException {
		DataObject dataObject = getDataObject();
		System.out.println("Data object on request :" + dataObject.toString());
		
		try {
			String address = URLEncoder.encode(dataObject.getString("address"), "UTF-8");
			HTTPControl controlParameters = getControlParameters();
			controlParameters.setDynamicOverrideURL(controlParameters.getDynamicOverrideURL() + address);
		} catch (UnsupportedEncodingException e) {
		}		
	}
	
	public void convertFromNativeData(HTTPInputStream arg0) throws DataBindingException, IOException {
		ServiceManager serviceManager = ServiceManager.INSTANCE;
		BOFactory bofactory = (BOFactory) serviceManager.locateService("com/ibm/websphere/bo/BOFactory");
		DataObject coordinates = bofactory.create("http://CustomersLib","Coordinates");
		
		nativeData.reset();
		byte[] buf = new byte[1024];
		int read = -1;
		while((read = arg0.read(buf, 0, 1024)) != -1) {
			nativeData.write(buf,0, read);
		}		
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		factory.setNamespaceAware(false);
		try {
			Document rdf = factory.newDocumentBuilder().parse(new ByteArrayInputStream(nativeData.toByteArray()));
			String coordinatesValue = XPathAPI.selectSingleNode(rdf, "/kml/Response/Placemark/Point/coordinates/text()").getNodeValue();
			coordinates.setString("latitude", coordinatesValue.split(",")[1]);
			coordinates.setString("longitude", coordinatesValue.split(",")[0]);
		}catch(Exception e) {
			e.printStackTrace();
		}

		fieldDataObject = coordinates;
	}

	public HTTPControl getControlParameters() {
		return httpControl;
	}



	public HTTPHeaders getHeaders() {
		return httpHeaders;
	}



	public boolean isBusinessException() {
		return isBusinessException;
	}



	public void setBusinessException(boolean arg0) {
		isBusinessException = arg0;
		
	}



	public void setControlParameters(HTTPControl arg0) {
		httpControl = arg0;
	}



	public void setHeaders(HTTPHeaders arg0) {
		httpHeaders = arg0;
	}



	public void write(HTTPOutputStream httpoutputstream) throws IOException {
		httpoutputstream.write(nativeData.toByteArray());
		
	}



	public void setDataObject(DataObject arg0) throws DataBindingException {
		fieldDataObject = arg0;
	}



	public DataObject getDataObject() throws DataBindingException {
		return fieldDataObject;
	}

}
