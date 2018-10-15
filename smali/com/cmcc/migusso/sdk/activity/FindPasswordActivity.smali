.class public Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "FindPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$b;,
        Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$a;,
        Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;
    }
.end annotation


# instance fields
.field private A:Ljava/util/Timer;

.field private B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

.field private C:Lcom/cmcc/migusso/sdk/common/TokenProcess;

.field private D:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private E:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

.field a:Z

.field private f:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private i:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private j:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private k:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

.field private l:Landroid/widget/TextView;

.field private m:Lo/gj;

.field private n:Lo/gl;

.field private o:Lo/gp;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m:Lo/gj;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->n:Lo/gl;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->o:Lo/gp;

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->s:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->t:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->u:Z

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->v:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->w:Z

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->x:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->y:I

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->y:I

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->z:I

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    return-void
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;I)I
    .locals 0

    iput p1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->z:I

    return p1
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    return-object v0
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "\u8be5\u624b\u673a\u53f7\u7801\u672a\u6ce8\u518c\uff0c\u8bf7\u66f4\u6362\u53f7\u7801\u6216\u7acb\u5373\u6ce8\u518c"

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

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->A:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;ILjava/lang/String;)V
    .locals 6

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    :goto_0
    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->x:Z

    if-eqz v0, :cond_0

    new-instance v0, Lo/gp;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b:Landroid/content/Context;

    const-string/jumbo v3, "\u7acb\u5373\u6ce8\u518c"

    const-string/jumbo v4, "\u66f4\u6362\u53f7\u7801"

    new-instance v5, Lo/bh;

    invoke-direct {v5, p0, p1}, Lo/bh;-><init>(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->o:Lo/gp;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->o:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->v:Z

    new-instance v0, Lo/gl;

    invoke-direct {v0, p1, p3}, Lo/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->n:Lo/gl;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->n:Lo/gl;

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
        0x192bf -> :sswitch_0
        0x192c2 -> :sswitch_1
        0x192c4 -> :sswitch_2
        0x192c5 -> :sswitch_2
        0x192db -> :sswitch_3
        0x19362 -> :sswitch_4
        0x19456 -> :sswitch_6
        0x19457 -> :sswitch_6
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Lorg/json/JSONObject;)V
    .locals 4

    const/16 v3, 0x16

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "FindPasswordActivity"

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$b;->start()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->s:Z

    return p1
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->v:Z

    return v0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->t:Z

    return p1
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->u:Z

    return p1
.end method

.method public static synthetic d(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/PasswordEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->k:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    return-object v0
.end method

.method public static synthetic e(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->s:Z

    return v0
.end method

.method public static synthetic f(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->z:I

    return v0
.end method

.method public static synthetic g(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->y:I

    return v0
.end method

.method public static synthetic h(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method public static synthetic i(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->t:Z

    return v0
.end method

.method public static synthetic j(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->u:Z

    return v0
.end method

.method public static synthetic k(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method static synthetic l(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)I
    .locals 2

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->z:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->z:I

    return v0
.end method

.method public static synthetic m(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->A:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic n(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->E:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    return-object v0
.end method

.method static synthetic o(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V
    .locals 7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->D:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c:Lo/go;

    new-instance v1, Lo/bj;

    invoke-direct {v1, p0}, Lo/bj;-><init>(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Lo/go;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->D:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->e:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->r:Ljava/lang/String;

    new-instance v6, Lo/bk;

    invoke-direct {v6, p0}, Lo/bk;-><init>(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0
.end method

.method public static synthetic p(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    return-object v0
.end method

.method public static synthetic q(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic r(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->C:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-object v0
.end method

.method public static synthetic s(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->w:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->D:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->C:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->k:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->E:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-boolean v0, v0, Lo/fv;->e:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->w:Z

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55\u51fa\u9519"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "FindPasswordActivity handleAsyncResult"

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

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->C:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->sendEmptyMessage(I)Z

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
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->C:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "\u7531\u4e8e\u5ba2\u6237\u7aef\u539f\u56e0\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->s:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->t:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->k:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->u:Z

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->s:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->z:I

    iget v3, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->y:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_3
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->s:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->t:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->u:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

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
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

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

    const-string/jumbo v1, "sso_findpwd_getsms_btn"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->D:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_3

    const-string/jumbo v0, "FindPasswordActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v4}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->D:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    const-string/jumbo v4, "2"

    new-instance v5, Lo/bg;

    invoke-direct {v5, p0}, Lo/bg;-><init>(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_findpwd_btn"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->k:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v8, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8f93\u5165\u6709\u8bef"

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_8

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v8, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8f93\u5165\u6709\u8bef"

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->k:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPwd(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "\u8bf7\u8f93\u51656-16\u4f4d\u7684\u6570\u5b57\u3001\u5b57\u6bcd\u6216\u7b26\u53f7"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->k:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->D:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_b

    const-string/jumbo v0, "FindPasswordActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->b()V

    invoke-virtual {p0, v4}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->D:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->q:Ljava/lang/String;

    new-instance v6, Lo/bi;

    invoke-direct {v6, p0}, Lo/bi;-><init>(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_findpwd_entry_he_tv"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_findpwd_entry_he2_tv"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :cond_d
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->v:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "https://wap.cmpassport.com/fm?optype=10&sourceid=9&check=35fb3c7b0486f4d7c3756dd62030f2e4&c=3"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->v:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sso_activity_findpassword"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string/jumbo v0, "sso_findpwd_title_bar"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v0, "sso_findpwd_username_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "sso_findpwd_smscode_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "sso_findpwd_getsms_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_findpwd_pwd_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->k:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    const-string/jumbo v0, "sso_findpwd_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_findpwd_entry_he2_tv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "INPUT_PHONENUMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setSelection(I)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->s:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "FROM_DEFAULT_LOGINACTIVITY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->x:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "FLAG_NEED_LOGIN"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a:Z

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->f:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/be;

    invoke-direct {v1, p0}, Lo/be;-><init>(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->k:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->g:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->k:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    new-instance v1, Lo/bf;

    invoke-direct {v1, p0}, Lo/bf;-><init>(Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->D:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->B:Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->A:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->A:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->A:Ljava/util/Timer;

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m:Lo/gj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->m:Lo/gj;

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

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->v:Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u60a8\u5df2\u79bb\u5f00\u627e\u56de\u5bc6\u7801\u754c\u9762"

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

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/FindPasswordActivity;->a:Z

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
