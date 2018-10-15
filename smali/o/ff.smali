.class final Lo/ff;
.super Ljava/util/TimerTask;
.source "VerifyOldPhoneActivity.java"


# instance fields
.field private synthetic a:Lo/fe;


# direct methods
.method constructor <init>(Lo/fe;)V
    .locals 0

    iput-object p1, p0, Lo/ff;->a:Lo/fe;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/ff;->a:Lo/fe;

    iget-object v0, v0, Lo/fe;->a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/ff;->a:Lo/fe;

    iget-object v0, v0, Lo/fe;->a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->j(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ff;->a:Lo/fe;

    iget-object v0, v0, Lo/fe;->a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->j(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/ff;->a:Lo/fe;

    iget-object v0, v0, Lo/fe;->a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->j(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ff;->a:Lo/fe;

    iget-object v0, v0, Lo/fe;->a:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->j(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
