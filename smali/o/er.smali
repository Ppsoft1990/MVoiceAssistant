.class public final Lo/er;
.super Ljava/lang/Object;
.source "UserManageActivity.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)V
    .locals 0

    iput-object p1, p0, Lo/er;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lo/er;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->c()V

    const-string/jumbo v0, "resultCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x18e70

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/er;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const-string/jumbo v1, "avatar"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->a(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lo/er;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const-string/jumbo v1, "nickname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->b(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lo/er;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const-string/jumbo v1, "msisdn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->c(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lo/er;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    const-string/jumbo v1, "implicit"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->d(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lo/er;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->a(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Lcom/cmcc/migusso/sdk/activity/UserManageActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/er;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->a(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Lcom/cmcc/migusso/sdk/activity/UserManageActivity$a;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity$a;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x12

    iput v3, v2, Landroid/os/Message;->what:I

    iput v0, v2, Landroid/os/Message;->arg1:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lo/er;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->a(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Lcom/cmcc/migusso/sdk/activity/UserManageActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/er;->a:Lcom/cmcc/migusso/sdk/activity/UserManageActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity;->a(Lcom/cmcc/migusso/sdk/activity/UserManageActivity;)Lcom/cmcc/migusso/sdk/activity/UserManageActivity$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/UserManageActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
