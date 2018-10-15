.class final Lo/dz;
.super Ljava/util/TimerTask;
.source "ThirdBindPhoneActivity.java"


# instance fields
.field private synthetic a:Lo/dy;


# direct methods
.method constructor <init>(Lo/dy;)V
    .locals 0

    iput-object p1, p0, Lo/dz;->a:Lo/dy;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/dz;->a:Lo/dy;

    iget-object v0, v0, Lo/dy;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->d(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/dz;->a:Lo/dy;

    iget-object v0, v0, Lo/dy;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dz;->a:Lo/dy;

    iget-object v0, v0, Lo/dy;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/dz;->a:Lo/dy;

    iget-object v0, v0, Lo/dy;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dz;->a:Lo/dy;

    iget-object v0, v0, Lo/dy;->a:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
