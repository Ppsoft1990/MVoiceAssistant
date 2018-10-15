.class public final Lo/af;
.super Ljava/lang/Object;
.source "ChangeNickNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)V
    .locals 0

    iput-object p1, p0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->c(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->d(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->b()V

    iget-object v0, p0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->d(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iget-object v1, p0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    iget-object v1, v1, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    iget-object v2, v2, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-static {v3}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->c(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/af;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-static {v4}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lo/ag;

    invoke-direct {v5, p0}, Lo/ag;-><init>(Lo/af;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->changeNickName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    :cond_0
    return-void
.end method
