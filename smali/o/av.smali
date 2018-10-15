.class public final Lo/av;
.super Ljava/lang/Object;
.source "EmailBindPhoneActivty.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V
    .locals 0

    iput-object p1, p0, Lo/av;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 6

    const/16 v2, 0x13

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5931\u8d25"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lo/av;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/av;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x18e70

    if-eq v0, v1, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    const v2, 0x19456

    if-eq v2, v0, :cond_2

    const v2, 0x19457

    if-ne v2, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "smsCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lo/av;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/av;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lo/av;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lo/av;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->h(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$c;

    iget-object v2, p0, Lo/av;->a:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    iget-object v2, v2, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$c;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method
