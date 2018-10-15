.class final Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$b;
.super Ljava/lang/Thread;
.source "AbcUpgradeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$b;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$b;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v0, "AbcUpgradeActivity"

    const-string/jumbo v1, "activity is null or finish..."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->o(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "AbcUpgradeActivity"

    const-string/jumbo v2, "mTokenProcess is null"

    invoke-static {v1, v2}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->n(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->n(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->o(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->parseToken(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
