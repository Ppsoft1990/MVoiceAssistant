.class final Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;
.super Landroid/os/Handler;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;

    if-nez v0, :cond_1

    const-string/jumbo v0, "ChangePasswordActivity"

    const-string/jumbo v1, "is null or finish"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->c()V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Z

    new-instance v1, Lo/gc;

    const-string/jumbo v2, "\u5bc6\u7801\u4fee\u6539\u6210\u529f"

    invoke-direct {v1, v0, v2}, Lo/gc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;Lo/gc;)Lo/gc;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->g(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Lo/gc;

    move-result-object v0

    invoke-virtual {v0}, Lo/gc;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ChangePasswordActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lo/gj;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;Lo/gj;)Lo/gj;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->h(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Lo/gj;

    move-result-object v0

    invoke-virtual {v0}, Lo/gj;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
