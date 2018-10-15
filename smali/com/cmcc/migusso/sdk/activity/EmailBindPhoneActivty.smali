.class public Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "EmailBindPhoneActivty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$a;,
        Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$c;,
        Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Ljava/util/Timer;

.field private j:Lo/gj;

.field private k:Lo/gl;

.field private l:Lcom/cmcc/migusso/sdk/common/TokenProcess;

.field private m:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private o:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private p:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private q:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

.field private v:J

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Lo/fx;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a:Z

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->f:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->g:I

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->g:I

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->h:I

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->k:Lo/gl;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->v:J

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->x:Z

    return-void
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;I)I
    .locals 0

    iput p1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->h:I

    return p1
.end method

.method public static synthetic a(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->i:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lo/fx;)Lo/fx;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->z:Lo/fx;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lo/gj;)Lo/gj;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;ILjava/lang/String;)V
    .locals 3

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Lo/gj;

    invoke-direct {v0, p1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lo/gl;

    invoke-direct {v0, p1, p3}, Lo/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->k:Lo/gl;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->k:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->show()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    new-instance v2, Lo/ay;

    invoke-direct {v2, p1}, Lo/ay;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    invoke-direct {v0, v1, p3, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    const-string/jumbo v1, "\u597d\u7684"

    iput-object v1, v0, Lo/gj;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x192bf -> :sswitch_0
        0x192c2 -> :sswitch_1
        0x19361 -> :sswitch_3
        0x19456 -> :sswitch_2
        0x19457 -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lorg/json/JSONObject;)V
    .locals 4

    const v3, 0x18ed6

    const/16 v2, 0x16

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

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

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    if-eq v0, v3, :cond_4

    const v1, 0x18ed5

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x17

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    const v1, 0x18e70

    if-eq v0, v1, :cond_6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x15

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->v:J

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a:Z

    return v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->h:I

    return v0
.end method

.method private static b(ILorg/json/JSONObject;)Ljava/lang/String;
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
    const-string/jumbo v0, "\u8be5\u624b\u673a\u53f7\u7801\u5df2\u6ce8\u518c\uff0c\u8bf7\u66f4\u6362\u53f7\u7801\u91cd\u8bd5\u6216\u4f7f\u7528\u624b\u673a\u53f7\u767b\u5f55\u3002"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "   \u624b\u673a\u53f7\u7801\u672a\u6ce8\u518c"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18ed5 -> :sswitch_3
        0x18ed6 -> :sswitch_3
        0x192bf -> :sswitch_1
        0x192c2 -> :sswitch_2
        0x192e6 -> :sswitch_0
        0x19361 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Lorg/json/JSONObject;)V
    .locals 4

    const/16 v3, 0x18

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "EmailBindPhoneActivty"

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$a;

    invoke-direct {v1, p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$a;->start()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->f:Z

    return p1
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->g:I

    return v0
.end method

.method public static synthetic d(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->q:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method public static synthetic e(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->f:Z

    return v0
.end method

.method public static synthetic f(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->p:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method static synthetic g(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)I
    .locals 2

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->h:I

    return v0
.end method

.method public static synthetic h(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->i:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic i(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lo/gj;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    return-object v0
.end method

.method static synthetic j(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->w:Z

    return v0
.end method

.method static synthetic k(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lo/fx;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->z:Lo/fx;

    return-object v0
.end method

.method static synthetic m(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V
    .locals 7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c:Lo/go;

    new-instance v1, Lo/az;

    invoke-direct {v1, p0}, Lo/az;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    invoke-virtual {v0, v1}, Lo/go;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->e:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->y:Ljava/lang/String;

    new-instance v6, Lo/ba;

    invoke-direct {v6, p0}, Lo/ba;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic n(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    return-object v0
.end method

.method public static synthetic o(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/view/ClearEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    return-object v0
.end method

.method public static synthetic p(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Lcom/cmcc/migusso/sdk/common/TokenProcess;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->l:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-object v0
.end method

.method public static synthetic q(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->x:Z

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->r:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->l:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "FLAG_NEED_LOGIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->w:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->y:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-boolean v0, v0, Lo/fv;->e:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->x:Z

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55\u51fa\u9519"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "EmailBindPhoneActivty handleAsyncResult"

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

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->l:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x18

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->l:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "\u7531\u4e8e\u5ba2\u6237\u7aef\u539f\u56e0\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_bind_phone_getSmsBt"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_3

    const-string/jumbo v0, "EmailBindPhoneActivty"

    const-string/jumbo v1, "mAuthnHelper  is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->q:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    const-string/jumbo v4, "6"

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->r:Ljava/lang/String;

    new-instance v6, Lo/av;

    invoke-direct {v6, p0}, Lo/av;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_bind_phone_Bt"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->v:J

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->o:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    iget-wide v2, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v8, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_8

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->o:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    iget-wide v2, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v8, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const-string/jumbo v0, "EmailBindPhoneActivty"

    const-string/jumbo v1, "mAuthnHelper or userName  is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b()V

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->w:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    new-instance v6, Lo/aw;

    invoke-direct {v6, p0}, Lo/aw;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->bindNewPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v7, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->r:Ljava/lang/String;

    const-string/jumbo v10, "DEFAULT"

    const/4 v11, 0x0

    iget-object v13, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->s:Ljava/lang/String;

    new-instance v14, Lo/ax;

    invoke-direct {v14, p0}, Lo/ax;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    move-object v12, v5

    invoke-interface/range {v6 .. v14}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->a()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_activity_email_bind_phone"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_phone_title_bar"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->m:Lcom/cmcc/migusso/sdk/view/TitleBar;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_phone_usernameEt"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_phone_smsCodeEt"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->o:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_phone_getSmsBt"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->q:Lcom/cmcc/migusso/sdk/view/CircleButton;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_phone_Bt"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->p:Lcom/cmcc/migusso/sdk/view/CircleButton;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->q:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->m:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/as;

    invoke-direct {v1, p0}, Lo/as;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->n:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/at;

    invoke-direct {v1, p0}, Lo/at;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->o:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/au;

    invoke-direct {v1, p0}, Lo/au;-><init>(Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->q:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->p:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->i:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->i:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->u:Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;->j:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->dismiss()V

    :cond_2
    return-void
.end method
