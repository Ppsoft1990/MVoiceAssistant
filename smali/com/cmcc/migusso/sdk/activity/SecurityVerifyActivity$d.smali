.class public final Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$d;
.super Ljava/lang/Object;
.source "SecurityVerifyActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$d;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 6

    const/16 v3, 0x13

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5931\u8d25"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x18e70

    if-eq v0, v1, :cond_6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    const v3, 0x19456

    if-eq v3, v0, :cond_3

    const v3, 0x19457

    if-ne v3, v0, :cond_4

    :cond_3
    const-string/jumbo v0, "smsCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->i(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;->sendEmptyMessage(I)Z

    :cond_7
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    invoke-static {v2, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;Ljava/util/Timer;)Ljava/util/Timer;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->g(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lo/dd;

    invoke-direct {v1, v2}, Lo/dd;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0
.end method
