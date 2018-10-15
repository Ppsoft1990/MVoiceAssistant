.class public Lgv$a;
.super Ljava/lang/Object;
.source "Bluetooth_SDK_4_0.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lgv;


# direct methods
.method public constructor <init>(Lgv;)V
    .locals 0
    .param p1, "this$0"    # Lgv;

    .prologue
    .line 200
    iput-object p1, p0, Lgv$a;->a:Lgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    const/4 v5, 0x0

    .line 203
    const-string/jumbo v2, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected() | profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",proxy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    instance-of v2, p2, Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_2

    .line 205
    iget-object v3, p0, Lgv$a;->a:Lgv;

    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v3, v2}, Lgv;->a(Lgv;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 210
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 213
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 218
    const-string/jumbo v2, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected() devices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    instance-of v2, p2, Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_3

    .line 220
    iget-object v3, p0, Lgv$a;->a:Lgv;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v2}, Lgv;->a(Lgv;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 225
    :cond_1
    :goto_2
    return-void

    .line 206
    .end local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    instance-of v2, p2, Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_0

    .line 207
    iget-object v3, p0, Lgv$a;->a:Lgv;

    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v3, v2}, Lgv;->a(Lgv;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    .line 214
    .restart local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ViaFly_Bluetooth_SDK_4_0_BT"

    const-string/jumbo v3, "onServiceConnected()  getConnectedDevices"

    invoke-static {v2, v3, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    instance-of v2, p2, Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_1

    .line 222
    iget-object v3, p0, Lgv$a;->a:Lgv;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v2}, Lgv;->b(Lgv;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_2
.end method

.method public onServiceDisconnected(I)V
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/4 v3, 0x0

    .line 229
    const-string/jumbo v0, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lgv$a;->a:Lgv;

    invoke-static {v0, v3}, Lgv;->a(Lgv;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 231
    iget-object v0, p0, Lgv$a;->a:Lgv;

    invoke-static {v0, v3}, Lgv;->b(Lgv;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 232
    iget-object v0, p0, Lgv$a;->a:Lgv;

    invoke-static {v0, v3}, Lgv;->a(Lgv;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 233
    iget-object v0, p0, Lgv$a;->a:Lgv;

    invoke-static {v0, v3}, Lgv;->a(Lgv;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 234
    return-void
.end method
