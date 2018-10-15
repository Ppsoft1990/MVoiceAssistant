.class public abstract Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.super Landroid/app/Activity;
.source "AbstractSsoBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/cmcc/util/SimpleToast;

.field public b:Landroid/content/Context;

.field protected c:Lo/go;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    invoke-virtual {v0, p1}, Lo/go;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    if-nez v0, :cond_0

    new-instance v0, Lo/go;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/go;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    invoke-virtual {v0}, Lo/go;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    invoke-virtual {v0}, Lo/go;->show()V

    :cond_1
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    if-nez v0, :cond_0

    new-instance v0, Lo/go;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lo/go;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    invoke-virtual {v0}, Lo/go;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    invoke-virtual {v0}, Lo/go;->show()V

    :cond_1
    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Current Top activity : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ". start handle asyncResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    invoke-virtual {v0}, Lo/go;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    invoke-virtual {v0}, Lo/go;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->a:Lcom/cmcc/util/SimpleToast;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cmcc/util/SimpleToast;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->a:Lcom/cmcc/util/SimpleToast;

    :goto_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->a:Lcom/cmcc/util/SimpleToast;

    invoke-virtual {v0}, Lcom/cmcc/util/SimpleToast;->show()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->a:Lcom/cmcc/util/SimpleToast;

    invoke-virtual {v0, p1}, Lcom/cmcc/util/SimpleToast;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmcc/util/SimpleToast;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/cmcc/util/SimpleToast;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/cmcc/util/SimpleToast;->show(J)V

    :cond_0
    return-void
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

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->requestWindowFeature(I)Z

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/cc;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->a()V

    iput-object p0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->b:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->e:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->e:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    invoke-virtual {v0}, Lo/go;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    invoke-virtual {v0}, Lo/go;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->c:Lo/go;

    :cond_0
    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/cc;->b(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->e:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->e:Ljava/lang/String;

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "appid"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "appkey"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
