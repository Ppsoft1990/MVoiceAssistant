.class public Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;
.super Ljava/lang/Object;
.source "NetworkStateChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStateChange"


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private ctx:Landroid/content/Context;

.field private info:Landroid/net/NetworkInfo;

.field private networkConListener:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;-><init>(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->receiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->ctx:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;
    .param p1, "x1"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->info:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->info:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->networkConListener:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;

    return-object v0
.end method

.method public static isMobileConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 116
    if-eqz p0, :cond_0

    .line 117
    const-string/jumbo v3, "connectivity"

    .line 118
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 120
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 121
    .local v1, "mMobileNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 125
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mMobileNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 79
    const-string/jumbo v2, "connectivity"

    .line 80
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 82
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 86
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string/jumbo v3, "connectivity"

    .line 96
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 97
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 99
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 101
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const/4 v3, 0x1

    .line 107
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :goto_1
    return v3

    .line 100
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public register(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;)V
    .locals 4
    .param p1, "networkConListener"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->networkConListener:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 62
    return-void
.end method

.method public unRegister()V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->networkConListener:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;

    .line 70
    return-void
.end method
