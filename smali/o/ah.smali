.class public final Lo/ah;
.super Ljava/lang/Object;
.source "ChangeNickNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;


# direct methods
.method public constructor <init>(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)V
    .locals 0

    iput-object p1, p0, Lo/ah;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lo/ah;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lo/ah;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->a(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ah;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->e(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)Lcom/cmcc/migusso/sdk/view/TitleBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->b(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lo/ah;->a:Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;->e(Lcom/cmcc/migusso/sdk/activity/ChangeNickNameActivity;)Lcom/cmcc/migusso/sdk/view/TitleBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->b(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
