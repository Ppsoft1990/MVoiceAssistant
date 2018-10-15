.class final Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;
.super Ljava/lang/Thread;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
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

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "is null or finish"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "mTokenProcess is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v1

    iget-boolean v1, v1, Lo/fv;->h:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "13"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(I)Lcom/cmcc/migusso/sdk/common/ThirdEventListener;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->B(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2, v2}, Lcom/cmcc/migusso/sdk/common/ThirdEventListener;->onThirdLoginComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v2

    iget-boolean v2, v2, Lo/fv;->d:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "LoginActivity handle SyncResult "

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v3, "errorString"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    if-eqz v2, :cond_a

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->F(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmcc/migusso/ssoutil/HistoryInfoUtils;->insertUser(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->e(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->c()V

    const/16 v2, 0x10

    iput v2, v4, Landroid/os/Message;->what:I

    :goto_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->J(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/cmcc/migusso/sdk/activity/LoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "15"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(I)Lcom/cmcc/migusso/sdk/common/ThirdEventListener;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "16"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(I)Lcom/cmcc/migusso/sdk/common/ThirdEventListener;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v1, "14"

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->z(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    if-ne v1, v3, :cond_c

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(I)Lcom/cmcc/migusso/sdk/common/ThirdEventListener;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->parseToken(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto/16 :goto_2

    :cond_9
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->s(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$d;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->parseToken(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    const/16 v2, 0x14

    iput v2, v4, Landroid/os/Message;->what:I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    :cond_b
    const-string/jumbo v2, "\u7531\u4e8e\u5ba2\u6237\u7aef\u539f\u56e0\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    :cond_c
    move-object v1, v2

    goto/16 :goto_1
.end method
