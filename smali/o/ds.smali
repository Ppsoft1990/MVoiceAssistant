.class public final Lo/ds;
.super Ljava/lang/Object;
.source "SmsLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ds;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/ds;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->s(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lo/ds;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ds;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lo/ds;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    iget-object v1, p0, Lo/ds;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->x(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/ds;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ds;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lo/ds;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    move-result-object v0

    iget-object v1, p0, Lo/ds;->a:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;

    invoke-static {v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->x(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
