package com.iflytek.viafly.mutiprocess;

/**
 * 主进程和子进程通信接口
 * Created by weiwei on 13-11-7.
 */
interface IProcess {

   /**
    * 获取boolean类型的配置项值
    */
    boolean getIflyBooleanSetting(String key, boolean defaultBoolean);
    
    /**
    * 获取String类型的配置项值
    */
    String getIflyStringSetting(String key);
    
    /**
    * 获取long类型的配置项值
    */
    long getIflyLongSetting(String key, long defaultLong);
    
    /**
    * 获取int类型的配置项值
    */
    int getIflyIntSetting(String key, int defaultInt);
   
    /**
    * 获取车载总开关
    */
	boolean getCarmodeOpen();
	
	/**
    * 获取车载短信播报开关
    */
	boolean getCarmodeSmsRead();

	/**
	* 获取话费流量短信收集开关
	*/
	boolean getSMSCollectSwitch();
	
	/**
    * 记录短信日志
    */
	void saveSmsLog(String tag, String logcontent);
	
	/**
    * 记录电话日志
    */
	void saveCallLog(String tag, String logcontent);
	
	/**
    * 获取动态检测类型
    */
	String getDetectorType();
	
	/**
    * 获取解析后短信uri
    */
	String filterMmsReceive(in Intent intent);
	
	/**
    * 获取短信action
    */
	String[] getMmsReceiveAction();
}
