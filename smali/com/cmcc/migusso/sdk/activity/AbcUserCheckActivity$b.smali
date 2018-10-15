.class final Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$b;
.super Ljava/lang/Object;
.source "AbcUserCheckActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "AbcUserCheckActivity onGetTokenComplete"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "AbcUserCheckActivity"

    const-string/jumbo v1, " is null or finished"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->a(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
