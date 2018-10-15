.class public Lcom/cmcc/migusso/sdk/activity/RegisterActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/RegisterActivity$a;,
        Lcom/cmcc/migusso/sdk/activity/RegisterActivity$c;,
        Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;
    }
.end annotation


# instance fields
.field private A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

.field private a:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private h:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

.field private i:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private j:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Ljava/util/Timer;

.field private v:Lo/gj;

.field private w:Lo/gl;

.field private x:Lo/gp;

.field private y:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private z:Lcom/cmcc/migusso/sdk/common/TokenProcess;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->p:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->r:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->s:I

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->s:I

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->t:I

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->v:Lo/gj;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->w:Lo/gl;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->x:Lo/gp;

    return-void
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;I)I
    .locals 0

    iput p1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->t:I

    return p1
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    return-object v0
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "\u8be5\u624b\u673a\u53f7\u7801\u5df2\u6ce8\u518c\uff0c\u8bf7\u66f4\u6362\u53f7\u7801\u91cd\u8bd5\u6216\u7acb\u5373\u767b\u5f55\u3002"

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
        0x192c2 -> :sswitch_1
        0x192db -> :sswitch_2
        0x19361 -> :sswitch_0
        0x19362 -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->u:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Lcom/cmcc/migusso/sdk/activity/RegisterActivity;ILjava/lang/String;)V
    .locals 6

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->v:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->v:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Lo/gp;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b:Landroid/content/Context;

    const-string/jumbo v3, "\u7acb\u5373\u767b\u5f55"

    const-string/jumbo v4, "\u66f4\u6362\u53f7\u7801"

    new-instance v5, Lo/cs;

    invoke-direct {v5, p0, p1}, Lo/cs;-><init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->x:Lo/gp;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->x:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->v:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->v:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->v:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->v:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->r:Z

    new-instance v0, Lo/gl;

    invoke-direct {v0, p1, p3}, Lo/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->w:Lo/gl;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->w:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->show()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18ed5 -> :sswitch_5
        0x18ed6 -> :sswitch_5
        0x18f4c -> :sswitch_5
        0x18f4d -> :sswitch_5
        0x18f4e -> :sswitch_5
        0x192c2 -> :sswitch_1
        0x192c4 -> :sswitch_2
        0x192c5 -> :sswitch_2
        0x192db -> :sswitch_3
        0x19361 -> :sswitch_0
        0x19362 -> :sswitch_4
        0x19456 -> :sswitch_6
        0x19457 -> :sswitch_6
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Lorg/json/JSONObject;)V
    .locals 4

    const/16 v3, 0x16

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "RegisterActivity"

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendMessage(Landroid/os/Message;)Z

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$a;->start()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o:Z

    return p1
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->r:Z

    return v0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->p:Z

    return p1
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->q:Z

    return p1
.end method

.method public static synthetic d(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/PasswordEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->h:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    return-object v0
.end method

.method public static synthetic e(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o:Z

    return v0
.end method

.method public static synthetic f(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->t:I

    return v0
.end method

.method public static synthetic g(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->s:I

    return v0
.end method

.method public static synthetic h(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method public static synthetic i(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->p:Z

    return v0
.end method

.method public static synthetic j(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->q:Z

    return v0
.end method

.method public static synthetic k(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method static synthetic l(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)I
    .locals 2

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->t:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->t:I

    return v0
.end method

.method public static synthetic m(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->u:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic n(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V
    .locals 7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->y:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c:Lo/go;

    new-instance v1, Lo/ct;

    invoke-direct {v1, p0}, Lo/ct;-><init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Lo/go;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->y:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->e:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->n:Ljava/lang/String;

    new-instance v6, Lo/cu;

    invoke-direct {v6, p0}, Lo/cu;-><init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0
.end method

.method public static synthetic o(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    return-object v0
.end method

.method public static synthetic p(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic q(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->z:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->y:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->z:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55\u51fa\u9519"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->z:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    if-nez v0, :cond_2

    const-string/jumbo v0, "RegisterActivity"

    const-string/jumbo v1, "tokenProcess is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "RegisterActivity handleAsyncResult"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "errorString"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->z:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x16

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->z:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "\u7531\u4e8e\u5ba2\u6237\u7aef\u539f\u56e0\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->p:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->h:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->q:Z

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->t:I

    iget v3, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->s:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_3
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->p:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->q:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_4
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_register_getsms_btn"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->y:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_3

    const-string/jumbo v0, "RegisterActivity"

    const-string/jumbo v1, "authnHelper is null."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v4}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->y:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    const-string/jumbo v4, "1"

    new-instance v5, Lo/cq;

    invoke-direct {v5, p0}, Lo/cq;-><init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_register_btn"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->h:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v8, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8f93\u5165\u6709\u8bef"

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_8

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v8, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8f93\u5165\u6709\u8bef"

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->h:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPwd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->h:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->y:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_b

    const-string/jumbo v0, "RegisterActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->b()V

    invoke-virtual {p0, v4}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->y:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->m:Ljava/lang/String;

    new-instance v6, Lo/cr;

    invoke-direct {v6, p0}, Lo/cr;-><init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_regiter_protocal_tv"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->r:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcc/migusso/sdk/activity/UserProtocolActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sso_activity_register"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string/jumbo v0, "sso_register_title_bar"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v0, "sso_register_username_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "sso_register_smscode_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "sso_register_getsms_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_register_pwd_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->h:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    const-string/jumbo v0, "sso_register_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_regiter_protocal_tv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "INPUT_PHONENUMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setSelection(I)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->o:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->a:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/co;

    invoke-direct {v1, p0}, Lo/co;-><init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->h:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->f:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->h:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    new-instance v1, Lo/cp;

    invoke-direct {v1, p0}, Lo/cp;-><init>(Lcom/cmcc/migusso/sdk/activity/RegisterActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->y:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->A:Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->u:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->u:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->u:Ljava/util/Timer;

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->v:Lo/gj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->v:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->v:Lo/gj;

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

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->r:Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u60a8\u5df2\u79bb\u5f00\u6ce8\u518c\u754c\u9762"

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

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/RegisterActivity;->r:Z

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
