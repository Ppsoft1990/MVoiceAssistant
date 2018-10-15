.class public abstract Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;
.super Landroid/app/Activity;
.source "AbstractBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-class v0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b()Landroid/view/View;
.end method

.method protected abstract c()V
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x103000c

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->setTheme(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->requestWindowFeature(I)Z

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/cc;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->a()V

    iput-object p0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->c()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "appkey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/cc;->b(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/migu/uem/statistics/page/PageAgent;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "appkey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->d:Ljava/lang/String;

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/migu/uem/statistics/page/PageAgent;->onResume(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "appid"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appkey"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractBaseActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
