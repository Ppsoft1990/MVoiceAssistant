.class public Lcom/iflytek/plugin/mobius/HeadsetAidlManager;
.super Ljava/lang/Object;
.source "HeadsetAidlManager.java"


# static fields
.field private static mInstance:Lcom/iflytek/plugin/mobius/HeadsetAidlManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mI2HeadsetAidlInterface:Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string/jumbo v0, "HeadsetAidlManager"

    iput-object v0, p0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->TAG:Ljava/lang/String;

    .line 54
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/iflytek/plugin/mobius/HeadsetAidlManager;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mInstance:Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    if-nez v0, :cond_1

    .line 92
    const-class v1, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mInstance:Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    invoke-direct {v0}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;-><init>()V

    sput-object v0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mInstance:Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    .line 96
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    sget-object v0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mInstance:Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onEventCallback(Lcom/iflytek/plugin/mobius/event/PluginEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/iflytek/plugin/mobius/event/PluginEvent;

    .prologue
    .line 209
    iget-object v1, p0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mI2HeadsetAidlInterface:Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    if-eqz v1, :cond_0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mI2HeadsetAidlInterface:Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    invoke-interface {v1, p1}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;->onEvent(Lcom/iflytek/plugin/mobius/event/PluginEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HeadsetAidlManager"

    const-string/jumbo v2, "onEventCallback error "

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public checkPluginUpdate()Z
    .locals 3

    .prologue
    const/16 v2, 0x12d

    .line 219
    const-string/jumbo v0, "HeadsetAidlManager"

    const-string/jumbo v1, "checkPluginUpdate"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v0

    .line 222
    invoke-static {v2}, Lasa;->f(I)I

    move-result v1

    .line 221
    invoke-virtual {v0, v2, v1}, Lasg;->a(II)Z

    move-result v0

    return v0
.end method

.method public disconnectBluetooth()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mI2HeadsetAidlInterface:Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mI2HeadsetAidlInterface:Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    invoke-interface {v1}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;->disconnectBluetooth()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HeadsetAidlManager"

    const-string/jumbo v2, "onEventCallback error "

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAddress()Lcom/iflytek/common/lbs/XAddress;
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Loa;->a()Loa;

    move-result-object v0

    invoke-virtual {v0}, Loa;->g()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 148
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v2

    .line 149
    .local v2, "user":Lcom/iflytek/viafly/account/entity/User;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 152
    :try_start_0
    const-string/jumbo v3, "PhoneNum"

    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 154
    const-string/jumbo v3, "NickName"

    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/account/entity/UserProfile;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v3, "PortraitLocalPath"

    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/account/entity/UserProfile;->getPortraitLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string/jumbo v3, "PortraitUrl"

    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/User;->getUserProfile()Lcom/iflytek/viafly/account/entity/UserProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/account/entity/UserProfile;->getPortraitUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    :cond_0
    invoke-virtual {v2}, Lcom/iflytek/viafly/account/entity/User;->getToken()Lcom/iflytek/viafly/account/entity/UserToken;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 160
    const-string/jumbo v3, "Token"

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v4, v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onEvent(Laam;)V
    .locals 2
    .param p1, "event"    # Laam;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Lcom/iflytek/plugin/mobius/event/PluginEvent;

    sget-object v1, Lcom/iflytek/plugin/mobius/event/EventType;->AUTH_SUCCESS:Lcom/iflytek/plugin/mobius/event/EventType;

    invoke-direct {v0, v1}, Lcom/iflytek/plugin/mobius/event/PluginEvent;-><init>(Lcom/iflytek/plugin/mobius/event/EventType;)V

    invoke-direct {p0, v0}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->onEventCallback(Lcom/iflytek/plugin/mobius/event/PluginEvent;)V

    goto :goto_0
.end method

.method public onEvent(Lanu;)V
    .locals 2
    .param p1, "event"    # Lanu;

    .prologue
    .line 180
    const-string/jumbo v0, "HeadsetAidlManager"

    const-string/jumbo v1, "onEvent get long token"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Lcom/iflytek/plugin/mobius/event/PluginEvent;

    sget-object v1, Lcom/iflytek/plugin/mobius/event/EventType;->USER_LONGTOKEN_GET:Lcom/iflytek/plugin/mobius/event/EventType;

    invoke-direct {v0, v1}, Lcom/iflytek/plugin/mobius/event/PluginEvent;-><init>(Lcom/iflytek/plugin/mobius/event/EventType;)V

    invoke-direct {p0, v0}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->onEventCallback(Lcom/iflytek/plugin/mobius/event/PluginEvent;)V

    goto :goto_0
.end method

.method public onEvent(Lti;)V
    .locals 3
    .param p1, "event"    # Lti;

    .prologue
    .line 189
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string/jumbo v1, "UserLoginEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    const-string/jumbo v1, "HeadsetAidlManager"

    const-string/jumbo v2, " user login"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v1, Lcom/iflytek/plugin/mobius/event/PluginEvent;

    sget-object v2, Lcom/iflytek/plugin/mobius/event/EventType;->USER_LOGIN:Lcom/iflytek/plugin/mobius/event/EventType;

    invoke-direct {v1, v2}, Lcom/iflytek/plugin/mobius/event/PluginEvent;-><init>(Lcom/iflytek/plugin/mobius/event/EventType;)V

    invoke-direct {p0, v1}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->onEventCallback(Lcom/iflytek/plugin/mobius/event/PluginEvent;)V

    goto :goto_0

    .line 200
    :cond_2
    const-string/jumbo v1, "UserLogoutEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string/jumbo v1, "HeadsetAidlManager"

    const-string/jumbo v2, " user logout"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Lcom/iflytek/plugin/mobius/event/PluginEvent;

    sget-object v2, Lcom/iflytek/plugin/mobius/event/EventType;->USER_LOGOUT:Lcom/iflytek/plugin/mobius/event/EventType;

    invoke-direct {v1, v2}, Lcom/iflytek/plugin/mobius/event/PluginEvent;-><init>(Lcom/iflytek/plugin/mobius/event/EventType;)V

    invoke-direct {p0, v1}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->onEventCallback(Lcom/iflytek/plugin/mobius/event/PluginEvent;)V

    goto :goto_0
.end method

.method public pluginUpdate()V
    .locals 4

    .prologue
    .line 226
    const-string/jumbo v2, "HeadsetAidlManager"

    const-string/jumbo v3, "pluginUpdate"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/iflytek/viafly/pluginmanagernew/ui/PluginManagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    const-string/jumbo v2, "EXTRA_ENTRY"

    const-string/jumbo v3, "mobius"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "HeadsetAidlManager"

    const-string/jumbo v3, "enterPlugin() exception"

    invoke-static {v2, v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public refreshUserInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {}, Lth;->a()Lth;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lth;->a(Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public registered(Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;)V
    .locals 2
    .param p1, "aidlInterface"    # Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mI2HeadsetAidlInterface:Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mI2HeadsetAidlInterface:Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    invoke-interface {v1}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;->registered()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startUserInfoActivity(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {}, Lvm;->a()Lvm;

    move-result-object v3

    const-string/jumbo v4, "20012"

    invoke-virtual {v3, v4}, Lvm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const-string/jumbo v3, "HeadsetAidlManager"

    const-string/jumbo v4, "user info use default url"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string/jumbo v2, "http://xz.voicecloud.cn/resources/lxUserInfo/index.html"

    .line 125
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/iflytek/viafly/browser/BrowserActivity;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserParams;

    invoke-direct {v0}, Lcom/iflytek/viafly/browser/BrowserParams;-><init>()V

    .line 127
    .local v0, "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    iput-object v2, v0, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    .line 128
    const-string/jumbo v3, "com.iflytek.cmccbrowser.EXTRA_BREIF_ITEM"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    invoke-static {p1, v1}, Lazo;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method public unregistered(Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;)V
    .locals 2
    .param p1, "aidlInterface"    # Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    .prologue
    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->mI2HeadsetAidlInterface:Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;

    .line 84
    :try_start_0
    invoke-interface {p1}, Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;->unregistered()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
