.class public final Lgv;
.super Ljava/lang/Object;
.source "Bluetooth_SDK_4_0.java"

# interfaces
.implements Lgu;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgv$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/bluetooth/BluetoothHeadset;

.field private c:Landroid/bluetooth/BluetoothA2dp;

.field private d:Landroid/bluetooth/BluetoothDevice;

.field private e:Landroid/bluetooth/BluetoothDevice;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Lgt;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgt;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lgt;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v2, p0, Lgv;->a:Landroid/content/Context;

    .line 29
    iput-object v2, p0, Lgv;->b:Landroid/bluetooth/BluetoothHeadset;

    .line 30
    iput-object v2, p0, Lgv;->c:Landroid/bluetooth/BluetoothA2dp;

    .line 31
    iput-object v2, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    .line 32
    iput-object v2, p0, Lgv;->e:Landroid/bluetooth/BluetoothDevice;

    .line 35
    iput-boolean v3, p0, Lgv;->h:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lgv;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lgv;->g:Lgt;

    .line 42
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lgv;->a:Landroid/content/Context;

    new-instance v4, Lgv$a;

    invoke-direct {v4, p0}, Lgv$a;-><init>(Lgv;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    .line 44
    .local v1, "mIsSupport":Z
    invoke-direct {p0}, Lgv;->h()V

    .line 45
    const-string/jumbo v2, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProfileProxy() | HEADSET | ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lgv;->a:Landroid/content/Context;

    new-instance v4, Lgv$a;

    invoke-direct {v4, p0}, Lgv$a;-><init>(Lgv;)V

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    .line 49
    const-string/jumbo v2, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProfileProxy() | A2DP | ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "mIsSupport":Z
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgv;->h:Z

    .line 52
    const-string/jumbo v2, "ViaFly_Bluetooth_SDK_4_0_BT"

    const-string/jumbo v3, "Bluetooth: getDefaultAdapter() error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lgv;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lgv;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 26
    iput-object p1, p0, Lgv;->c:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic a(Lgv;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lgv;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 26
    iput-object p1, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic a(Lgv;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lgv;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 26
    iput-object p1, p0, Lgv;->b:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic a(Lgv;)Lgt;
    .locals 1
    .param p0, "x0"    # Lgv;

    .prologue
    .line 26
    iget-object v0, p0, Lgv;->g:Lgt;

    return-object v0
.end method

.method static synthetic b(Lgv;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lgv;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 26
    iput-object p1, p0, Lgv;->e:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method private h()V
    .locals 4

    .prologue
    .line 126
    new-instance v1, Lgv$1;

    invoke-direct {v1, p0}, Lgv$1;-><init>(Lgv;)V

    iput-object v1, p0, Lgv;->f:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v1

    iget-object v2, p0, Lgv;->a:Landroid/content/Context;

    iget-object v3, p0, Lgv;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 194
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_0

    .line 59
    const-string/jumbo v2, "ViaFly_Bluetooth_SDK_4_0_BT"

    const-string/jumbo v3, "startRecognize NULL device"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return v1

    .line 62
    :cond_0
    iget-object v2, p0, Lgv;->b:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_2

    .line 63
    iget-object v1, p0, Lgv;->b:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 64
    .local v0, "isConnect":Z
    const-string/jumbo v1, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecognize isAudioConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz v0, :cond_1

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lgv;->b:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0

    .line 70
    .end local v0    # "isConnect":Z
    :cond_2
    const-string/jumbo v2, "ViaFly_Bluetooth_SDK_4_0_BT"

    const-string/jumbo v3, "startRecognize not BIND_SERVICE"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    .line 77
    const-string/jumbo v1, "ViaFly_Bluetooth_SDK_4_0_BT"

    const-string/jumbo v2, "stopRecognize NULL device"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v1, p0, Lgv;->b:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 81
    iget-object v0, p0, Lgv;->b:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0

    .line 83
    :cond_1
    const-string/jumbo v1, "ViaFly_Bluetooth_SDK_4_0_BT"

    const-string/jumbo v2, "stopRecognize not BIND_SERVICE"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "ret":Z
    iget-object v1, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 102
    :cond_0
    const-string/jumbo v1, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isConntected() | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "ret":Z
    iget-object v1, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    .line 111
    const-string/jumbo v1, "ViaFly_Bluetooth_SDK_4_0_BT"

    const-string/jumbo v2, "isAudioConntected  device NULL"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    .line 119
    :goto_0
    return v1

    .line 113
    :cond_0
    iget-object v1, p0, Lgv;->b:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lgv;->b:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 115
    const-string/jumbo v1, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAudioConntected ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v0

    .line 119
    goto :goto_0

    .line 117
    :cond_1
    const-string/jumbo v1, "ViaFly_Bluetooth_SDK_4_0_BT"

    const-string/jumbo v2, "isAudioConntected not BIND_SERVICE"

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_0
    const-string/jumbo v1, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getHeadsetName() | name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgv;->d:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-object v0
.end method

.method public f()Z
    .locals 4

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "ret":Z
    iget-object v1, p0, Lgv;->e:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 269
    :cond_0
    const-string/jumbo v1, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isA2dpConnected() | ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method
