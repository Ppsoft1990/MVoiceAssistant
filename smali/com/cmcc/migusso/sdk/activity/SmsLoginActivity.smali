.class public Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "SmsLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$b;,
        Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;,
        Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Ljava/lang/Runnable;

.field private a:Z

.field private f:Z

.field private g:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private i:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private j:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private k:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lo/gj;

.field private o:Lo/gl;

.field private p:Lo/gp;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/LinearLayout;

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/util/Timer;

.field private w:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private x:Lcom/cmcc/migusso/sdk/common/TokenProcess;

.field private y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a:Z

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->f:Z

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n:Lo/gj;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->o:Lo/gl;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->p:Lo/gp;

    const/16 v0, 0x3c

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->s:I

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->s:I

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->t:I

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->s:I

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->u:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->A:Z

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->B:Z

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->D:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->E:Z

    new-instance v0, Lo/ds;

    invoke-direct {v0, p0}, Lo/ds;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->F:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;I)I
    .locals 0

    iput p1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->t:I

    return p1
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    return-object v0
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->v:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;ILjava/lang/String;)V
    .locals 2

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Lo/gj;

    invoke-direct {v0, p0, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->A:Z

    new-instance v0, Lo/gl;

    invoke-direct {v0, p1, p3}, Lo/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->o:Lo/gl;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->o:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->show()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18ed5 -> :sswitch_3
        0x18ed6 -> :sswitch_3
        0x18f4c -> :sswitch_3
        0x18f4d -> :sswitch_3
        0x18f4e -> :sswitch_3
        0x192bf -> :sswitch_0
        0x192c2 -> :sswitch_1
        0x192c4 -> :sswitch_2
        0x192c5 -> :sswitch_2
        0x19456 -> :sswitch_4
        0x19457 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x14

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "12"

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    const/4 v3, 0x1

    const-string/jumbo v4, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1, v2, v3, v4}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "SmsLoginActivity"

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "12"

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    const-string/jumbo v4, "resultString"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const v1, 0x18e70

    if-eq v0, v1, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "token\u4e3a\u7a7a"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->D:Ljava/lang/String;

    const-string/jumbo v1, "implicit"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->C:Ljava/lang/String;

    new-instance v1, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$b;->start()V

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;I)I
    .locals 0

    iput p1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->u:I

    return p1
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "   \u624b\u673a\u53f7\u7801\u672a\u6ce8\u518c"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x192bf
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->A:Z

    return v0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->f:Z

    return p1
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a:Z

    return v0
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->E:Z

    return p1
.end method

.method public static synthetic d(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->t:I

    return v0
.end method

.method public static synthetic e(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->s:I

    return v0
.end method

.method public static synthetic f(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method public static synthetic g(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->f:Z

    return v0
.end method

.method public static synthetic h(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->k:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method public static synthetic i(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->r:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic j(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    return-object v0
.end method

.method public static synthetic k(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->E:Z

    return v0
.end method

.method public static synthetic l(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->v:Ljava/util/Timer;

    return-object v0
.end method

.method public static synthetic m(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->x:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-object v0
.end method

.method static synthetic n(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->B:Z

    return v0
.end method

.method static synthetic o(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I
    .locals 2

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->t:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->t:I

    return v0
.end method

.method static synthetic p(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V
    .locals 4

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/gp;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->D:Ljava/lang/String;

    const-string/jumbo v2, "\u7acb\u5373\u4fee\u6539"

    new-instance v3, Lo/dp;

    invoke-direct {v3, p0}, Lo/dp;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->p:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->p:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/gp;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->D:Ljava/lang/String;

    const-string/jumbo v2, "\u7acb\u5373\u4fee\u6539"

    new-instance v3, Lo/dq;

    invoke-direct {v3, p0}, Lo/dq;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->p:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->p:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    goto :goto_0
.end method

.method public static synthetic s(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->u:I

    return v0
.end method

.method static synthetic t(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)I
    .locals 2

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->u:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->u:I

    return v0
.end method

.method static synthetic v(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)J
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->z:J

    return-wide v0
.end method

.method public static synthetic w(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic x(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->F:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->w:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    invoke-direct {v0, p0, p0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->x:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-boolean v0, v0, Lo/fv;->e:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->B:Z

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55\u51fa\u9519"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "SmsLoginActivity handleAsyncResult"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "errorString"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->A:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c()V

    const/16 v0, 0x10

    iput v0, v2, Landroid/os/Message;->what:I

    :goto_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->x:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->x:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const/16 v0, 0x14

    iput v0, v2, Landroid/os/Message;->what:I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "\u7531\u4e8e\u5ba2\u6237\u7aef\u539f\u56e0\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "SmsLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onActivityResult  requestCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resulCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_0

    const-string/jumbo v0, "SmsLoginActivity"

    const-string/jumbo v1, "BACK FROM CHANGEPASSWORDACTIVITY SUCCESS."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->A:Z

    invoke-virtual {p0, v3}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "SmsLoginActivity"

    const-string/jumbo v1, "BACK FROM CHANGEPASSWORDACTIVITY CANCEL."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_smsmlogin_getsms_btn"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->w:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->w:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    const-string/jumbo v4, "3"

    new-instance v5, Lo/dm;

    invoke-direct {v5, p0}, Lo/dm;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_smsmlogin_login_btn"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->z:J

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->i:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    iget-wide v2, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->z:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v8, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8f93\u5165\u6709\u8bef"

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_7

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->i:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    iget-wide v2, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->z:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v8, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8f93\u5165\u6709\u8bef"

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->w:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_8

    const-string/jumbo v0, "SmsLoginActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "\u767b\u5f55\u4e2d"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c:Lo/go;

    new-instance v1, Lo/do;

    invoke-direct {v1, p0}, Lo/do;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V

    invoke-virtual {v0, v1}, Lo/go;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->w:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->e:Ljava/lang/String;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->m:Ljava/lang/String;

    new-instance v6, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$a;

    invoke-direct {v6, p0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$a;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_smslogin_voice_valid"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->w:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->w:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->l:Ljava/lang/String;

    const-string/jumbo v4, "3"

    new-instance v5, Lo/dr;

    invoke-direct {v5, p0}, Lo/dr;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getVoiceValidCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sso_activity_smslogin"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string/jumbo v0, "sso_smslogin_title_bar"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->g:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v0, "sso_smslogin_username_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "sso_smslogin_smscode_edt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->i:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "sso_smsmlogin_getsms_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_smsmlogin_login_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->k:Lcom/cmcc/migusso/sdk/view/CircleButton;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->k:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "INPUT_PHONENUMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setSelection(I)V

    iput-boolean v3, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->a:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :cond_0
    const-string/jumbo v0, "sso_smslogin_voice_valid"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->q:Landroid/widget/TextView;

    const-string/jumbo v0, "sso_smslogin_voice_container"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->r:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->g:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/dj;

    invoke-direct {v1, p0}, Lo/dj;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/dk;

    invoke-direct {v1, p0}, Lo/dk;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->i:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/dl;

    invoke-direct {v1, p0}, Lo/dl;-><init>(Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->k:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->h:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->i:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onDestroy()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->w:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->y:Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->v:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->v:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->v:Ljava/util/Timer;

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n:Lo/gj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->n:Lo/gj;

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

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->A:Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u60a8\u5df2\u79bb\u5f00\u767b\u5f55\u754c\u9762"

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

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SmsLoginActivity;->A:Z

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onResume()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
