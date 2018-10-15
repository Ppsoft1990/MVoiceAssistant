.class public Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "UpgradeUserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$b;,
        Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

.field private m:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private n:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private o:Lcom/cmcc/migusso/sdk/common/TokenProcess;

.field private p:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

.field private q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

.field private r:Lo/gu;

.field private s:Lo/gj;

.field private t:Lo/gz;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->f:Z

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->g:Z

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->r:Lo/gu;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->s:Lo/gj;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->t:Lo/gz;

    return-void
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "   \u624b\u673a\u53f7\u7801\u672a\u6ce8\u518c"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, " \u60a8\u7684\u5bc6\u7801\u8fc7\u4e8e\u7b80\u5355\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x192bf -> :sswitch_0
        0x192c2 -> :sswitch_1
        0x192db -> :sswitch_2
        0x19362 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;Lo/gj;)Lo/gj;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->s:Lo/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;Lo/gz;)Lo/gz;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->t:Lo/gz;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;ILjava/lang/String;)V
    .locals 2

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Lo/gu;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->r:Lo/gu;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->r:Lo/gu;

    invoke-virtual {v0}, Lo/gu;->show()V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x192db -> :sswitch_0
        0x19362 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;Lorg/json/JSONObject;)V
    .locals 4

    const/16 v3, 0x16

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "UpgradeUserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "json : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x18e70

    if-eq v0, v1, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "token"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "token\u4e3a\u7a7a"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$b;->start()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->f:Z

    return v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V
    .locals 6

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->l:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u5e10\u53f7\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u5e10\u53f7\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->l:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPwd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->l:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->n:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_4

    const-string/jumbo v0, "UpgradeUserActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->n:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->k:Ljava/lang/String;

    new-instance v5, Lo/em;

    invoke-direct {v5, p0}, Lo/em;-><init>(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->upgradeUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a:Z

    return v0
.end method

.method public static synthetic d(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method public static synthetic e(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    return-object v0
.end method

.method static synthetic f(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->p:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    return-object v0
.end method

.method public static synthetic g(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V
    .locals 7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->n:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_1

    const-string/jumbo v0, "UpgradeUserActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->c:Lo/go;

    new-instance v1, Lo/en;

    invoke-direct {v1, p0}, Lo/en;-><init>(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V

    invoke-virtual {v0, v1}, Lo/go;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->n:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->e:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->k:Ljava/lang/String;

    new-instance v6, Lo/eo;

    invoke-direct {v6, p0}, Lo/eo;-><init>(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lo/gz;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->t:Lo/gz;

    return-object v0
.end method

.method public static synthetic i(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->o:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-object v0
.end method

.method public static synthetic j(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->g:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->n:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->o:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->l:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->p:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-boolean v0, v0, Lo/fv;->e:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->g:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->j:Ljava/lang/String;

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55\u51fa\u9519"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "UpgradeUserActivity handleAsyncResult"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "errorString"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->o:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x16

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->q:Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity$a;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->o:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "\u7531\u4e8e\u5ba2\u6237\u7aef\u539f\u56e0\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sso_activity_upgradeuser"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->setContentView(I)V

    const-string/jumbo v0, "sso_upgrade_title_bar"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v0, "sso_upgrade_user_tv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->i:Landroid/widget/TextView;

    const-string/jumbo v0, "sso_upgrade_newpwd_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->l:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    const-string/jumbo v0, "sso_upgrade_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/ej;

    invoke-direct {v1, p0}, Lo/ej;-><init>(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    new-instance v1, Lo/ek;

    invoke-direct {v1, p0}, Lo/ek;-><init>(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->l:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    new-instance v1, Lo/el;

    invoke-direct {v1, p0}, Lo/el;-><init>(Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->r:Lo/gu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->r:Lo/gu;

    invoke-virtual {v0}, Lo/gu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->r:Lo/gu;

    invoke-virtual {v0}, Lo/gu;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->s:Lo/gj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->s:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->s:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->t:Lo/gz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->t:Lo/gz;

    invoke-virtual {v0}, Lo/gz;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->t:Lo/gz;

    invoke-virtual {v0}, Lo/gz;->dismiss()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->f:Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u60a8\u5df2\u79bb\u5f00\u5e10\u53f7\u5347\u7ea7\u754c\u9762"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/UpgradeUserActivity;->f:Z

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onResume()V

    return-void
.end method
