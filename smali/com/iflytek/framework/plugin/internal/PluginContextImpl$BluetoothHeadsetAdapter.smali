.class final Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;
.super Ljava/lang/Object;
.source "PluginContextImpl.java"

# interfaces
.implements Lcom/iflytek/yd/base/IBluetoothHeadset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/plugin/internal/PluginContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BluetoothHeadsetAdapter"
.end annotation


# instance fields
.field private bluetoothManager:Lgs;

.field final synthetic this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/plugin/internal/PluginContextImpl;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;->this$0:Lcom/iflytek/framework/plugin/internal/PluginContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    invoke-static {p2}, Lgs;->a(Landroid/content/Context;)Lgs;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;->bluetoothManager:Lgs;

    .line 564
    return-void
.end method


# virtual methods
.method public getHeadsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;->bluetoothManager:Lgs;

    invoke-virtual {v0}, Lgs;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isA2dpConnected()Z
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;->bluetoothManager:Lgs;

    invoke-virtual {v0}, Lgs;->e()Z

    move-result v0

    return v0
.end method

.method public isAudioConntected()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;->bluetoothManager:Lgs;

    invoke-virtual {v0}, Lgs;->d()Z

    move-result v0

    return v0
.end method

.method public isConntected()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;->bluetoothManager:Lgs;

    invoke-virtual {v0}, Lgs;->b()Z

    move-result v0

    return v0
.end method

.method public isSupport()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/iflytek/framework/plugin/internal/PluginContextImpl$BluetoothHeadsetAdapter;->bluetoothManager:Lgs;

    invoke-virtual {v0}, Lgs;->c()Z

    move-result v0

    return v0
.end method
