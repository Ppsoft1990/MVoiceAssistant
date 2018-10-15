.class final Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmcc/migusso/sdk/activity/LoginActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "LoginActivity"

    const-string/jumbo v1, "is null or finish..."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->t(Lcom/cmcc/migusso/sdk/activity/LoginActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Z)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/LoginActivity$e;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/cmcc/migusso/sdk/activity/LoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/LoginActivity;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
