.class public Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "SetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;,
        Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$b;,
        Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;
    }
.end annotation


# instance fields
.field private a:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

.field private g:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Boolean;

.field private l:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

.field private n:Lcom/cmcc/migusso/sdk/common/TokenProcess;

.field private o:Lo/gj;

.field private p:Lo/gc;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->k:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->o:Lo/gj;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->p:Lo/gc;

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

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;Lo/gc;)Lo/gc;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->p:Lo/gc;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;Lo/gj;)Lo/gj;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->o:Lo/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;ILjava/lang/String;)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p2}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x192db -> :sswitch_0
        0x19362 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;Lorg/json/JSONObject;)V
    .locals 4

    const v3, 0x18ed6

    const/16 v2, 0x13

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_2

    const v1, 0x18ed5

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x14

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const v1, 0x18f4c

    if-eq v0, v1, :cond_4

    const v1, 0x18f4d

    if-eq v0, v1, :cond_4

    const v1, 0x18f4e

    if-eq v0, v1, :cond_4

    if-ne v0, v3, :cond_5

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    const v1, 0x18e70

    if-eq v0, v1, :cond_6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->h:Z

    return v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->h:Z

    return p1
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method static synthetic b(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;Lorg/json/JSONObject;)V
    .locals 4

    const/16 v3, 0x16

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "SetPasswordActivity"

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$a;->start()V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)V
    .locals 7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPwd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->l:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "authnHelper is null or username is empty"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->b()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->l:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->j:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i:Ljava/lang/String;

    new-instance v6, Lo/di;

    invoke-direct {v6, p0}, Lo/di;-><init>(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)V
    .locals 7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->l:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->l:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->e:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->i:Ljava/lang/String;

    new-instance v6, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$b;

    invoke-direct {v6, p0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$b;-><init>(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic f(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lo/gc;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->p:Lo/gc;

    return-object v0
.end method

.method static synthetic g(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lo/gj;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->o:Lo/gj;

    return-object v0
.end method

.method static synthetic h(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->n:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-object v0
.end method

.method static synthetic i(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->l:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->n:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "FLAG_NEED_LOGIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->k:Ljava/lang/Boolean;

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    const/16 v2, 0x16

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u767b\u5f55\u51fa\u9519"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "SetPasswordActivity handleAsyncResult"

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

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->n:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->m:Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->n:Lcom/cmcc/migusso/sdk/common/TokenProcess;

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

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_activity_set_password"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_set_password_title_bar"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a:Lcom/cmcc/migusso/sdk/view/TitleBar;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_login_password_Et"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_set_password_Bt"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/CircleButton;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->a:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/de;

    invoke-direct {v1, p0}, Lo/de;-><init>(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    new-instance v1, Lo/df;

    invoke-direct {v1}, Lo/df;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    new-instance v1, Lo/dg;

    invoke-direct {v1, p0}, Lo/dg;-><init>(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/CircleButton;

    new-instance v1, Lo/dh;

    invoke-direct {v1, p0}, Lo/dh;-><init>(Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->o:Lo/gj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->o:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SetPasswordActivity;->o:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->dismiss()V

    :cond_0
    return-void
.end method
