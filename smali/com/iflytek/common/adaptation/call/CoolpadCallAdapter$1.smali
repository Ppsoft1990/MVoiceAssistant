.class Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter$1;
.super Lcom/yulong/android/telephony/CPPhoneStateListener;
.source "CoolpadCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;


# direct methods
.method constructor <init>(Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter$1;->this$0:Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;

    invoke-direct {p0}, Lcom/yulong/android/telephony/CPPhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualCallStateChanged(ILjava/lang/String;I)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v7, 0x2

    .line 97
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter$1;->this$0:Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;

    invoke-static {v4}, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->access$000(Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDualCallStateChanged | state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", incomingNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eq p3, v7, :cond_0

    .line 102
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter$1;->this$0:Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;

    invoke-static {v4}, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->access$000(Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "onDualCallStateChanged | phoneId != 2--->return"

    invoke-static {v4, v5}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string/jumbo v0, ""

    .line 107
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 109
    .local v3, "strState":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "incoming_number"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v4, "phoneIdKey"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter$1;->this$0:Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;

    iget-object v4, v4, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/iflytek/base/call/CallReceiverService;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter$1;->this$0:Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;

    iget-object v4, v4, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/yulong/android/telephony/CPPhoneStateListener;->onDualCallStateChanged(ILjava/lang/String;I)V

    goto :goto_0

    .line 111
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    .line 112
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 113
    goto :goto_1

    .line 115
    :pswitch_1
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    .line 116
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 117
    goto :goto_1

    .line 119
    :pswitch_2
    const-string/jumbo v0, "android.intent.action.PHONE_STATE"

    .line 120
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
