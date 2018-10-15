.class public final Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "AbcUserCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$b;,
        Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private g:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private h:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lo/gj;

.field private n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

.field private o:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->o:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$b;

    return-void
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;Lo/gj;)Lo/gj;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->m:Lo/gj;

    return-object p1
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)V
    .locals 7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->h:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_1

    const-string/jumbo v0, "AbcUserCheckActivity"

    const-string/jumbo v1, "mAuthnHelper  is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->b()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->h:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->o:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$b;

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->checkAbcAccountAndPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x18e70

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    invoke-virtual {v1, v2, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    const/4 v1, 0x0

    const-string/jumbo v2, "setpwd"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->g:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Lo/gj;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->m:Lo/gj;

    return-object v0
.end method

.method static synthetic d(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->h:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$b;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$b;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->o:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$b;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "upgradeType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "nickName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->l:Ljava/lang/String;

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->finish()V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->h:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->h:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->e:Ljava/lang/String;

    const/4 v3, 0x2

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sso_activity_abc_user_check"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->setContentView(I)V

    const-string/jumbo v0, "sso_upgrade_title_bar"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->a:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v0, "edt_abc_check_phone"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "cb_abc_check_next"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->g:Lcom/cmcc/migusso/sdk/view/CircleButton;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->g:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->a:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/d;

    invoke-direct {v1, p0}, Lo/d;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->g:Lcom/cmcc/migusso/sdk/view/CircleButton;

    new-instance v1, Lo/e;

    invoke-direct {v1, p0}, Lo/e;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/f;

    invoke-direct {v1, p0}, Lo/f;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onDestroy()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->h:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->m:Lo/gj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->m:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->m:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->dismiss()V

    :cond_1
    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity;->n:Lcom/cmcc/migusso/sdk/activity/AbcUserCheckActivity$a;

    return-void
.end method
