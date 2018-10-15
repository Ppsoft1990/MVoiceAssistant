.class public Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;
.super Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;
.source "IHeadsetAidlInterfaceBinder.java"


# static fields
.field private static final MOBIUS_PACKAGE_NAME:Ljava/lang/String; = "com.cmcc.viafly.headset"

.field private static final PERMISSOC_MOBIUS:Ljava/lang/String; = "com.iflytek.aidl.permission.CONNECT_MOBIUS"

.field private static final TAG:Ljava/lang/String; = "IHeadsetAidlInterfaceBinder"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 44
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p2, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const/4 v1, 0x1

    .line 47
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendFTOpLog(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "extraParam"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    const-string/jumbo v0, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v1, "appendFTOpLog "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    return-void
.end method

.method public appendLXCPALog(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    const-string/jumbo v0, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v1, "appendLXCPALog "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lwz;->a(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .param p1, "anInt"    # I
    .param p2, "aLong"    # J
    .param p4, "aBoolean"    # Z
    .param p5, "aFloat"    # F
    .param p6, "aDouble"    # D
    .param p8, "aString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public checkPluginUpdate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getInstance()Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->checkPluginUpdate()Z

    move-result v0

    return v0
.end method

.method public getAddress()Lcom/iflytek/common/lbs/XAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    const-string/jumbo v0, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v1, "getAddress"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getInstance()Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getAddress()Lcom/iflytek/common/lbs/XAddress;

    move-result-object v0

    return-object v0
.end method

.method public getBaseConfig()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    const-string/jumbo v1, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v2, "getBaseConfig "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lvy;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 112
    .local v0, "configJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    const-string/jumbo v0, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v1, "getToken"

    invoke-static {v0, v1}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getInstance()Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseInfo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    const-string/jumbo v0, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v1, "getUseInfo "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getInstance()Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getUseInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 154
    :try_start_0
    const-string/jumbo v4, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v5, "\u505a\u5305\u540d\uff0c\u6743\u9650\u6821\u9a8c"

    invoke-static {v4, v5}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 157
    invoke-static {}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 159
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 164
    if-eqz v1, :cond_0

    const-string/jumbo v4, "com.cmcc.viafly.headset"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.iflytek.cmcc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 172
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "packages":[Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterface$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 173
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pluginUpdate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getInstance()Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->pluginUpdate()V

    .line 149
    return-void
.end method

.method public refreshUserInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    const-string/jumbo v0, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v1, "refreshUserInfo "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getInstance()Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->refreshUserInfo()V

    .line 83
    return-void
.end method

.method public registerCallback(Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;)V
    .locals 2
    .param p1, "callback"    # Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    const-string/jumbo v0, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v1, "registerCallback "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-static {}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getInstance()Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->registered(Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;)V

    .line 120
    return-void
.end method

.method public startLoginActivity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    const-string/jumbo v0, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v1, "startLoginActivity "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder$1;

    invoke-direct {v1, p0}, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder$1;-><init>(Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public startShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "musicWebUrl"    # Ljava/lang/String;
    .param p2, "musicDataUrl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "des"    # Ljava/lang/String;
    .param p5, "bitmapPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lazu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 100
    return-void
.end method

.method public startTransShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "translate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "translateText"

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lazu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 95
    return-void
.end method

.method public startUserInfoActivity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    const-string/jumbo v0, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v1, "startUserInfoActivity "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getInstance()Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/plugin/mobius/IHeadsetAidlInterfaceBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->startUserInfoActivity(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public unregisterCallback(Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;)V
    .locals 2
    .param p1, "callback"    # Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    const-string/jumbo v0, "IHeadsetAidlInterfaceBinder"

    const-string/jumbo v1, "unregisterCallback "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->getInstance()Lcom/iflytek/plugin/mobius/HeadsetAidlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/plugin/mobius/HeadsetAidlManager;->unregistered(Lcom/iflytek/plugin/mobius/I2HeadsetAidlInterface;)V

    .line 127
    return-void
.end method
