package com.iflytek.framework.plugin.sdk;

import android.content.Intent;

/**
 * 主程序和插件APK交互接口
 * Created by weiwei on 14-2-7
 */
interface IRemotePlugin {
	
	/**
    * 获取插件APK中配置信息
    */
	byte[] getPluginInfo();
	
	/**
    * 返回主程序校验APK插件版本结果
    */
	void onVersionCheck(boolean checkResult);
	
	/**
    * 灵犀获取进入插件APK的参数
    */
	Intent getEnterPluginIntent();
}