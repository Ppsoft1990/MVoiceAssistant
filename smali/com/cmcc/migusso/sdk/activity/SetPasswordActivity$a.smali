.class final Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;
.super Ljava/lang/Thread;
.source "SetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;->a:Ljava/lang/ref/WeakReference;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v4, 0x16

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "is null or finish"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->h(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "SetPasswordActivity"

    const-string/jumbo v2, "mTokenProcess is null"

    invoke-static {v1, v2}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->h(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->parseToken(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "SetPasswordActivity"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "errorString"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->h(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v4, v2, Landroid/os/Message;->what:I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->h(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "\u7531\u4e8e\u5ba2\u6237\u7aef\u539f\u56e0\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method
