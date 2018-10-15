package com.iflytek.framework.plugin.interfaces.lockscreen;

/**
 * 锁屏独立插件通信接口定义
 * Created by jingyuan2 on 14-2-7.
 */
interface ILockScreen {

    /**
    * 获取String类型的锁屏配置项值
    */
    String getLockScreenConfig(String inputStr);  
 
    /**
    * 添加操作日志记录
    */
    void appendOpLog(String opCode, long startTime, String result, in Map map);
   
    /**
    * 数据上传接口
    */
    void uploadByteData(in Bundle bundle);
    
   /**
    * 获取重训口令声纹名称
    */
    String getReTraningWord(String dirPath);
    
    /**
    * 获取重训录音数据列表
    */
    List getReTrainFileList(in Bundle dirPathList);
    
    /**
    * 获取重训录音数据值列表
    */
    Map getRetrainByteMap(in Bundle filePathList);

    /**
    * 覆盖安装
    */
    boolean noticeLxLockStatus(String inputStr1,String inputStr2);
}
