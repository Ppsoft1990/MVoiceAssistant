.class public final Lo/du;
.super Ljava/lang/Object;
.source "ThirdBindPhoneActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/ICallBack;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lo/du;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback()V
    .locals 1

    iget-object v0, p0, Lo/du;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    return-void
.end method
