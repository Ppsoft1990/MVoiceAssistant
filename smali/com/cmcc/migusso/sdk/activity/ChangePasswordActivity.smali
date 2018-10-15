.class public Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

.field private g:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

.field private h:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private i:Landroid/widget/TextView;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

.field private r:Lo/gc;

.field private s:Lo/gj;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->j:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->o:Z

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->r:Lo/gc;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->s:Lo/gj;

    return-void
.end method

.method private static a(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "   \u624b\u673a\u53f7\u7801\u672a\u6ce8\u518c"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "\u60a8\u8f93\u5165\u7684\u539f\u5bc6\u7801\u9519\u8bef"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, " \u60a8\u7684\u5bc6\u7801\u8fc7\u4e8e\u7b80\u5355\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x192bf -> :sswitch_0
        0x192db -> :sswitch_2
        0x1932c -> :sswitch_1
        0x19362 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;Lo/gc;)Lo/gc;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->r:Lo/gc;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;Lo/gj;)Lo/gj;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->s:Lo/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;ILjava/lang/String;)V
    .locals 1

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Lo/gj;

    invoke-direct {v0, p0, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->s:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->s:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x192db -> :sswitch_1
        0x1932c -> :sswitch_0
        0x19362 -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;Lorg/json/JSONObject;)V
    .locals 8

    const/16 v2, 0x13

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x18f4c

    if-eq v0, v1, :cond_2

    const v1, 0x18f4d

    if-eq v0, v1, :cond_2

    const v1, 0x18f4e

    if-eq v0, v1, :cond_2

    const v1, 0x18ed6

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const v1, 0x18e70

    if-eq v0, v1, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/16 v0, 0x11

    iput v0, v7, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->e:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->m:Ljava/lang/String;

    new-instance v6, Lo/ar;

    invoke-direct {v6}, Lo/ar;-><init>()V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    invoke-virtual {v0, v7}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->o:Z

    return v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->j:Z

    return p1
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->j:Z

    return v0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->k:Z

    return p1
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->k:Z

    return v0
.end method

.method public static synthetic d(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method public static synthetic e(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)V
    .locals 7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u60a8\u8f93\u5165\u7684\u539f\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPwd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u60a8\u8f93\u5165\u7684\u539f\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPwd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "ChangePasswordActivity"

    const-string/jumbo v1, "authnhelper or username is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->b()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->m:Ljava/lang/String;

    new-instance v6, Lo/aq;

    invoke-direct {v6, p0}, Lo/aq;-><init>(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0
.end method

.method public static synthetic f(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Lo/gc;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->r:Lo/gc;

    return-object v0
.end method

.method static synthetic h(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)Lo/gj;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->s:Lo/gj;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->n:Ljava/lang/String;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "ChangePasswordActivity"

    const-string/jumbo v1, "BACK FROM FINDPASSWORDACTIVITY SUCCESS."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->o:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sso_activity_changepassword"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string/jumbo v0, "sso_changepwd_title_bar"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v0, "sso_changepwd_oldpwd_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    const-string/jumbo v0, "sso_changepwd_newpwd_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    const-string/jumbo v0, "sso_changepwd_okbtn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_changepwd_gofindpwd_tv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->a:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/aj;

    invoke-direct {v1, p0}, Lo/aj;-><init>(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    new-instance v1, Lo/ak;

    invoke-direct {v1, p0}, Lo/ak;-><init>(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    new-instance v1, Lo/al;

    invoke-direct {v1, p0}, Lo/al;-><init>(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/CircleButton;

    new-instance v1, Lo/am;

    invoke-direct {v1, p0}, Lo/am;-><init>(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->i:Landroid/widget/TextView;

    new-instance v1, Lo/an;

    invoke-direct {v1, p0}, Lo/an;-><init>(Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    new-instance v1, Lo/ao;

    invoke-direct {v1}, Lo/ao;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    new-instance v1, Lo/ap;

    invoke-direct {v1}, Lo/ap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->q:Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->r:Lo/gc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->r:Lo/gc;

    invoke-virtual {v0}, Lo/gc;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->r:Lo/gc;

    invoke-virtual {v0}, Lo/gc;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->s:Lo/gj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->s:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->s:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->dismiss()V

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

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->o:Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u60a8\u5df2\u79bb\u5f00\u4fee\u6539\u5bc6\u7801\u754c\u9762"

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

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ChangePasswordActivity;->o:Z

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onResume()V

    return-void
.end method
