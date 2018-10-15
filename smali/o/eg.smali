.class public final Lo/eg;
.super Ljava/lang/Object;
.source "ThirdBindPhoneActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/ICallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/eg;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    iput-object p2, p0, Lo/eg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 2

    const-string/jumbo v0, "APP"

    iget-object v1, p0, Lo/eg;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->q(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/eg;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->r(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/auth/TokenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x19366

    iget-object v1, p0, Lo/eg;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lo/eg;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->r(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/auth/TokenListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    :goto_0
    iget-object v0, p0, Lo/eg;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lo/eg;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->setResult(I)V

    goto :goto_0
.end method
