.class final Lo/dn;
.super Ljava/util/TimerTask;
.source "SmsLoginActivity.java"


# instance fields
.field private synthetic a:Lo/dm;


# direct methods
.method constructor <init>(Lo/dm;)V
    .locals 0

    iput-object p1, p0, Lo/dn;->a:Lo/dm;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/dn;->a:Lo/dm;

    iget-object v0, v0, Lo/dm;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->d(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/dn;->a:Lo/dm;

    iget-object v0, v0, Lo/dm;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dn;->a:Lo/dm;

    iget-object v0, v0, Lo/dm;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lo/dn;->a:Lo/dm;

    iget-object v0, v0, Lo/dm;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->k(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dn;->a:Lo/dm;

    iget-object v0, v0, Lo/dm;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->d(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/dn;->a:Lo/dm;

    iget-object v0, v0, Lo/dm;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/dn;->a:Lo/dm;

    iget-object v0, v0, Lo/dm;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dn;->a:Lo/dm;

    iget-object v0, v0, Lo/dm;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
