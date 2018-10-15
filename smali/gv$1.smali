.class Lgv$1;
.super Landroid/content/BroadcastReceiver;
.source "Bluetooth_SDK_4_0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgv;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgv;


# direct methods
.method constructor <init>(Lgv;)V
    .locals 0
    .param p1, "this$0"    # Lgv;

    .prologue
    .line 126
    iput-object p1, p0, Lgv$1;->a:Lgv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xa

    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive() | action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string/jumbo v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    const-string/jumbo v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 133
    .local v3, "state":I
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 134
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v4, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-ne v3, v8, :cond_1

    .line 136
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4, v1}, Lgv;->a(Lgv;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 137
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 138
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    invoke-interface {v4}, Lgt;->j()V

    .line 186
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 140
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "state":I
    :cond_1
    if-nez v3, :cond_0

    .line 141
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4, v10}, Lgv;->a(Lgv;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 142
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 143
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    invoke-interface {v4}, Lgt;->k()V

    goto :goto_0

    .line 147
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "state":I
    :cond_2
    const-string/jumbo v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 148
    const-string/jumbo v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 149
    .restart local v3    # "state":I
    const-string/jumbo v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 150
    .local v2, "prevState":I
    const-string/jumbo v4, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " prevState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 152
    const/16 v4, 0xc

    if-ne v3, v4, :cond_3

    .line 153
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    invoke-interface {v4}, Lgt;->l()V

    goto :goto_0

    .line 154
    :cond_3
    if-ne v3, v9, :cond_0

    .line 155
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    invoke-interface {v4}, Lgt;->m()V

    goto :goto_0

    .line 159
    .end local v2    # "prevState":I
    .end local v3    # "state":I
    :cond_4
    const-string/jumbo v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 160
    const-string/jumbo v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 161
    .restart local v3    # "state":I
    const-string/jumbo v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 162
    .restart local v2    # "prevState":I
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 163
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v4, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " prevState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 165
    if-ne v3, v8, :cond_5

    .line 166
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4, v1}, Lgv;->b(Lgv;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 167
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    invoke-interface {v4}, Lgt;->n()V

    goto/16 :goto_0

    .line 168
    :cond_5
    if-nez v3, :cond_0

    .line 169
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4, v10}, Lgv;->b(Lgv;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 170
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    invoke-interface {v4}, Lgt;->o()V

    goto/16 :goto_0

    .line 174
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "prevState":I
    .end local v3    # "state":I
    :cond_6
    const-string/jumbo v4, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    const-string/jumbo v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 176
    .restart local v3    # "state":I
    const-string/jumbo v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 177
    .restart local v2    # "prevState":I
    const-string/jumbo v4, "ViaFly_Bluetooth_SDK_4_0_BT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " prevState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 179
    if-ne v3, v9, :cond_7

    .line 180
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    invoke-interface {v4}, Lgt;->p()V

    goto/16 :goto_0

    .line 181
    :cond_7
    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 182
    iget-object v4, p0, Lgv$1;->a:Lgv;

    invoke-static {v4}, Lgv;->a(Lgv;)Lgt;

    move-result-object v4

    invoke-interface {v4}, Lgt;->q()V

    goto/16 :goto_0
.end method
