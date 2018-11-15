package com.itest.dao;


import java.util.ArrayList;
import java.util.List;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import com.itest.entity.XiangYin;
import com.itest.entity.addyl;
import com.itest.entity.zhuangtai;


public class itestDao {

	public XiangYin ylrun(addyl addly) {
		XiangYin xiangyin=new XiangYin();
		List<zhuangtai> assertc=new ArrayList(); 
		try { // 创建一个httpclient对象
			CloseableHttpClient client = HttpClients.createDefault();
			// 创建URIBuilder
			// URIBuilder uri = new URIBuilder("http://www.baidu.com");
			// 创建httpGet对象
			// 请求服务
			CloseableHttpResponse response = null;
			if (addly.getMethodv().equals("1")) {
				// get
				HttpGet hg = new HttpGet(addly.getUrl());
				//System.out.println("get"+addly.getUrl());
				if (addly.getHerder() == 1) {
					for (int i = 0; i < addly.getHerder1().size(); i++) {
						hg.setHeader(new BasicHeader(addly.getHerder1().get(i).getName(),
								addly.getHerder1().get(i).getValue()));
					}
					
				}
			    Header[] headerbefore=	hg.getAllHeaders();
			    List<String> headerbf = new ArrayList();
				for(Header c:headerbefore){
				String cc=c.toString();
				headerbf.add(cc);
				}
				xiangyin.setHeaderbefore(headerbf);
				response = client.execute(hg);
			} else {
				// post
				HttpPost post = new HttpPost(addly.getUrl());
				//System.out.println(addly.getUrl());
				if (addly.getHerder() == 1) {
					for (int i = 0; i < addly.getHerder1().size(); i++)
						post.setHeader(new BasicHeader(addly.getHerder1().get(i).getName(),
								addly.getHerder1().get(i).getValue()));
				}
				if (addly.getValue() == 1) {
					List<NameValuePair> formList = new ArrayList<>();
					for (int i = 0; i < addly.getListvalue().size(); i++) {
						formList.add(new BasicNameValuePair(addly.getListvalue().get(i).getName(),
								addly.getListvalue().get(i).getValue()));
					}
					StringEntity entity = new UrlEncodedFormEntity(formList, "utf-8");
					post.setEntity(entity);
				}
			    Header[] headerbefore=	post.getAllHeaders();
			    List<String> headerbf = new ArrayList();
				for(Header c:headerbefore){
				String cc=c.toString();
				headerbf.add(cc);
				}
				xiangyin.setHeaderbefore(headerbf);
				response = client.execute(post);
			}
			
		//Header headerq = response.getFirstHeader("C");
			//response.getEntity().g
			Header[] header = response.getAllHeaders();
			List<String> head = new ArrayList();
			System.out.println("1");
			for(Header c:header){
			String cc=c.toString();
				head.add(cc);
			System.out.println("1"+c);
			}
			xiangyin.setHeader(head);
			
			int Code = response.getStatusLine().getStatusCode();	
			HttpEntity entity = response.getEntity();
			String resStr;
			resStr = EntityUtils.toString(entity, "utf-8");	
			xiangyin.setZhaungtai(Code);
			xiangyin.setXiangyintext(resStr);
			if (addly.getAssertadd() == 1) {
				for (int i = 0; i < addly.getAssertaddv().size(); i++) {
				    zhuangtai av = new zhuangtai();	
					if (addly.getAssertaddv().get(i).getResponseid() == 0) {
						
					} else if (addly.getAssertaddv().get(i).getResponseid() == 1) {	
					//	list.add("响应信息："+resStr);
						if (resStr == addly.getAssertaddv().get(i).getValue()||resStr.equals(addly.getAssertaddv().get(i).getValue())) {                    
                         av.setZhaungtai(1);
                         if(xiangyin.getXiangyin()!=2){
                         xiangyin.setXiangyin(1);
                         }
                         av.setShuxin(addly.getAssertaddv().get(i).getAttribute());
                         av.setXiangyintext("属性："+addly.getAssertaddv().get(i).getAttribute()+":断言成功"+"<br/>");   
						} else {
						  av.setZhaungtai(2);
						  xiangyin.setXiangyin(2);
						  av.setShuxin(addly.getAssertaddv().get(i).getAttribute());
						  av.setXiangyintext("属性："+addly.getAssertaddv().get(i).getAttribute()+";状态:断言失败；响应参数："+resStr+"断言参数："+addly.getAssertaddv().get(i).getValue()+"<br/>");
						}

					} else if (addly.getAssertaddv().get(i).getResponseid() == 2) {
					//	int statusCode = response.getStatusLine().getStatusCode();
						try{
						if (Code == Integer.parseInt(addly.getAssertaddv().get(i).getValue())) {
							av.setZhaungtai(1);
							 if(xiangyin.getXiangyin()!=2){
		                         xiangyin.setXiangyin(1);
		                         }
							av.setShuxin(addly.getAssertaddv().get(i).getAttribute());
							av.setXiangyintext("属性："+addly.getAssertaddv().get(i).getAttribute()+";状态:断言成功"+"<br/>");
							} else {
							av.setZhaungtai(2);
							xiangyin.setXiangyin(2);
							av.setShuxin(addly.getAssertaddv().get(i).getAttribute());
							av.setXiangyintext("属性："+addly.getAssertaddv().get(i).getAttribute()+";/r/n状态:断言失败;响应参数：："+Code+";断言参数："+addly.getAssertaddv().get(i).getValue()+"<br/>");			
						}
						}catch(Exception e){
							xiangyin.setXiangyin(2);
					        av.setXiangyintext("属性："+addly.getAssertaddv().get(i).getAttribute()+e.getMessage());
						}
					}
				    assertc.add(av);
				}		          	
			          	
			}
			xiangyin.setCs(assertc);
			System.out.print("csss");
			response.close();
			client.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
               return xiangyin;
}

}
