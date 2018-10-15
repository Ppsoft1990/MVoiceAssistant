// IAddressAidlInterface.aidl
package com.iflytek.plugin.mobius;
import com.iflytek.plugin.mobius.event.PluginEvent;
// Declare any non-default types here with import statements

interface I2HeadsetAidlInterface {

    //注册到播放中间件成功
    void registered();
    //解绑成功
    void unregistered();

    //宿主Eventbus事件
    void onEvent(in PluginEvent event);
    //断开蓝牙
    void disconnectBluetooth();
}
