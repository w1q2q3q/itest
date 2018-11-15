package com.itest.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.beans.factory.annotation.Autowired;

import com.itest.entity.addyl;
import com.itest.entity.cass;
import com.itest.entity.zhuangtai;

import net.sf.json.JSONArray;

public class TestRun {

	public List<cass> testrun(List<addyl> addyl, int cassid, int zhuid, int number) {
		List<cass> cass = new ArrayList();
		CloseableHttpClient client = HttpClients.createDefault();
		// 创建URIBuilder
		// URIBuilder uri = new URIBuilder("http://www.baidu.com");
		// 创建httpGet对象
		// 请求服务
		CloseableHttpResponse response = null;
		try {
			for (int i = 0; i < addyl.size(); i++) {
				Thread.sleep(1000);
				cass c = new cass();
				c.setCassid(cassid);
				c.setZhuid(zhuid);
				c.setNumber(number);
				Date day = new Date();
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				c.setData(df.format(day));
				addyl addcass = addyl.get(i);
				c.setYlid(addcass.getID());
				c.setName(addcass.getName());
				System.out.println(addcass.getName());
				c.setDescribev(addcass.getDescribev());
				String assertc = "";
				if (addcass.getMethodv().equals("1")) {
					// get
					HttpGet hg = new HttpGet(addcass.getUrl());
					// System.out.println("get"+addly.getUrl());
					if (addcass.getHerder() == 1) {
						for (int j = 0; j < addcass.getHerder1().size(); j++) {
							hg.setHeader(new BasicHeader(addcass.getHerder1().get(j).getName(),
									addcass.getHerder1().get(j).getValue()));
						}
					}
					System.out.println(addcass.getUrl());
					Header[] headerbefore=hg.getAllHeaders();
				    List<String> headerbf = new ArrayList();
					for(Header hb:headerbefore){
					String shb=hb.toString();
					headerbf.add(shb);
					}
				    String beforeheader =JSONArray.fromObject(headerbf).toString();
					c.setBeforeheader(beforeheader);
					try {
						response = client.execute(hg);
					} catch (Exception e) {
						e.printStackTrace();
						assertc = assertc + "<div class='failClass'>" + addcass.getUrl() + "请求失败,异常：" + e + "</div>";
					}
				} else {
					// post
					HttpPost post = new HttpPost(addcass.getUrl());
					if (addcass.getHerder() == 1) {
						for (int j = 0; j < addyl.get(i).getHerder1().size(); j++)
							post.setHeader(new BasicHeader(addcass.getHerder1().get(j).getName(),
									addcass.getHerder1().get(j).getValue()));
					}
					if (addcass.getValue() == 1) {
						List<NameValuePair> formList = new ArrayList<>();
						for (int j = 0; j < addcass.getListvalue().size(); j++) {
							formList.add(new BasicNameValuePair(addcass.getListvalue().get(j).getName(),
									addcass.getListvalue().get(j).getValue()));
						}
						StringEntity entity = new UrlEncodedFormEntity(formList, "utf-8");
						post.setEntity(entity);
					}
					System.out.println(addcass.getUrl());
					Header[] headerbefore=post.getAllHeaders();
				    List<String> headerbf = new ArrayList();
					for(Header hb:headerbefore){
					String shb=hb.toString();
					headerbf.add(shb);
					}
				    String beforeheader =JSONArray.fromObject(headerbf).toString();
					c.setBeforeheader(beforeheader);
					try {
						response = client.execute(post);
					} catch (Exception e) {
						e.printStackTrace();
						assertc = assertc + "<div class='failClass'>" + addcass.getUrl() + "请求失败,异常：" + e + "</div>";
					}

				}
				Header[] headerbefore=response.getAllHeaders();
			    List<String> headerbf = new ArrayList();
				for(Header hb:headerbefore){
				String shb=hb.toString();
				headerbf.add(shb);
				}
			    String afterheader =JSONArray.fromObject(headerbf).toString();
				c.setAfterheader(afterheader);	
				
				int Code = response.getStatusLine().getStatusCode();
				c.setZhaungtai(Code);
				HttpEntity entity = response.getEntity();
				String resStr = "";
				try {
					resStr = EntityUtils.toString(entity, "utf-8");
				} catch (Exception e) {
					e.printStackTrace();
					assertc = assertc + "<div class='failClass'>异常：" + e + "</div>";
				}
				c.setXiangyintext(resStr);
				int aert = 0;
				if (addcass.getAssertadd() == 1) {
					for (int j = 0; j < addcass.getAssertaddv().size(); j++) {

						if (addcass.getAssertaddv().get(j).getResponseid() == 0) {

						} else if (addcass.getAssertaddv().get(j).getResponseid() == 1) {
							// list.add("响应信息："+resStr);
							if (resStr == addcass.getAssertaddv().get(j).getValue()
									|| resStr.equals(addcass.getAssertaddv().get(j).getValue())) {
								assertc = assertc + "<div class='passClass'>"
										+ addcass.getAssertaddv().get(j).getAttribute() + "断言成功</div>";
							} else {
								aert = 1;
								assertc = assertc + "<div class='failClass'>"
										+ addcass.getAssertaddv().get(j).getAttribute() + "断言失败</div>";
							}
						} else if (addcass.getAssertaddv().get(j).getResponseid() == 2) {
							// int statusCode =
							// response.getStatusLine().getStatusCode();
							if (Code == Integer.parseInt(addcass.getAssertaddv().get(j).getValue())) {
								assertc = assertc + "<div class='passClass'>"
										+ addcass.getAssertaddv().get(j).getAttribute() + "断言成功</div>";
							} else {
								aert = 1;
								assertc = assertc + "<div class='failClass'>"
										+ addcass.getAssertaddv().get(j).getAttribute() + "断言失败</div>";
							}
						}

					}
				}
				c.setAeer(aert);
				System.out.println(assertc);
				c.setAssertc(assertc);
				cass.add(c);
			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return cass;
	}

}
