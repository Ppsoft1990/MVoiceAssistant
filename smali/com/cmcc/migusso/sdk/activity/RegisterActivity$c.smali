.class public final Lcom/cmcc/migusso/sdk/activity/RegisterActivity$c;
.super Ljava/util/TimerTask;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
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

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "RegisterActivity"

    const-string/jumbo v1, "is null or finsih"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
