.class public final Lo/cr;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V
    .locals 0

    iput-object p1, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 6

    const/16 v5, 0x14

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u62b1\u6b49\uff0c\u6ce8\u518c\u5931\u8d25"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v2}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->p(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    iget-object v1, v1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "2"

    iget-object v3, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->p(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "resultString"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x18e70

    if-eq v0, v1, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/cr;->a:Lcom/cmcc/migusso/sdk/activity/RegisterActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
