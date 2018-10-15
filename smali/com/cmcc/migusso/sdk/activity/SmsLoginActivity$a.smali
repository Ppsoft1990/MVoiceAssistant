.class final Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$a;
.super Ljava/lang/Object;
.source "SmsLoginActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;
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
            "Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$a;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "SmsLoginActivity"

    const-string/jumbo v1, "is null or finish..."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a(Z)V

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
