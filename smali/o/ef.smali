.class public final Lo/ef;
.super Ljava/lang/Object;
.source "ThirdBindPhoneActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/ICallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ef;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 2

    const v0, 0x18e70

    const-string/jumbo v1, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lo/ef;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/common/JSONCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/ef;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/common/JSONCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cmcc/migusso/sdk/common/JSONCallBack;->callback(Lorg/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lo/ef;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->finish()V

    return-void
.end method
