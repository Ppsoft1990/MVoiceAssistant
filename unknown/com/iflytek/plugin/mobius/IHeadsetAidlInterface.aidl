// IAddressAidlInterface.aidl
package com.iflytek.plugin.mobius;
import com.iflytek.common.lbs.XAddress;
import com.iflytek.plugin.mobius.I2HeadsetAidlInterface;
// Declare any non-default types here with import statements

interface IHeadsetAidlInterface {
    /**
     * Demonstrates some basic types that you can use as parameters
     * and return values in AIDL.
     */
    void basicTypes(int anInt, long aLong, boolean aBoolean, float aFloat,
            double aDouble, String aString);
     //获取灵犀缓存的位置信息
     XAddress getAddress();
     //获取灵犀token
     String getToken();
     //跳转登录界面
     void startLoginActivity();
    //刷新用户信息
     void refreshUserInfo();
     //跳转登录界面
     void startUserInfoActivity();
     //调用翻译分享
     void startTransShare(String src, String translate);
     //url分享
     void startShare(String musicWebUrl,String musicDataUrl,String title, String des, String bitmapPath);
    //获取用户信息
     String getUseInfo();
    //获取appconfig等网络接口配置参数  返回json string
      String getBaseConfig();
    void registerCallback(in I2HeadsetAidlInterface callback);
    void unregisterCallback(in I2HeadsetAidlInterface callback);
    /************************** 日志 **************************/
    //操作日志
    void appendFTOpLog(String code, in Map extraParam);
    //稽核日志
    void appendLXCPALog(String code);

    /***********升级*************/
    boolean checkPluginUpdate();
    void pluginUpdate();
}
