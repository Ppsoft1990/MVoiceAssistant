.class public Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "SecurityVerifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$d;,
        Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$b;,
        Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$a;,
        Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private a:I

.field private f:I

.field private g:Ljava/util/Timer;

.field private h:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private i:Lcom/cmcc/migusso/sdk/view/TopTipView;

.field private j:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private n:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/cmcc/migusso/sdk/common/TokenProcess;

.field private t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private u:Lo/gj;

.field private v:Lo/gl;

.field private w:Lo/gp;

.field private x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a:I

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a:I

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->f:I

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->u:Lo/gj;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->v:Lo/gl;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->w:Lo/gp;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->y:Z

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->z:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;I)I
    .locals 0

    iput p1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->f:I

    return p1
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->m:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    return-object v0
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->g:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;ILjava/lang/String;)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Lo/gj;

    invoke-direct {v0, p0, p2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->u:Lo/gj;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->u:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Lo/gj;

    invoke-direct {v0, p0, p2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->u:Lo/gj;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->u:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lo/gj;

    invoke-direct {v0, p0, p2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->u:Lo/gj;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->u:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lo/gl;

    invoke-direct {v0, p0, p2}, Lo/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->v:Lo/gl;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->v:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->show()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->p:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->G:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lo/gj;

    new-instance v1, Lo/da;

    invoke-direct {v1, p0}, Lo/da;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-direct {v0, p0, p2, v1}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->u:Lo/gj;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->u:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18ed5 -> :sswitch_1
        0x18ed6 -> :sswitch_1
        0x18f4c -> :sswitch_1
        0x18f4d -> :sswitch_1
        0x18f4e -> :sswitch_1
        0x192c4 -> :sswitch_0
        0x192c5 -> :sswitch_0
        0x192ee -> :sswitch_3
        0x192ef -> :sswitch_4
        0x19456 -> :sswitch_2
        0x19457 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x14

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "12"

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->C:Ljava/lang/String;

    const/4 v3, 0x1

    const-string/jumbo v4, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1, v2, v3, v4}, Lo/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "SecVerifyActivity"

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "12"

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->C:Ljava/lang/String;

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

    invoke-static {v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;->sendMessage(Landroid/os/Message;)Z

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->A:Ljava/lang/String;

    const-string/jumbo v1, "implicit"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->z:Ljava/lang/String;

    new-instance v1, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$b;->start()V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SecVerifyActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getImageCode URL = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    new-instance v1, Lo/fu;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->q:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v0}, Lo/fu;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lo/fu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
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

    :pswitch_3
    const-string/jumbo v0, "\u5e10\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x192bf
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->s:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-object v0
.end method

.method public static synthetic d(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->f:I

    return v0
.end method

.method private d()Z
    .locals 2

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->B:I

    const v1, 0x1945b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method static synthetic f(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)I
    .locals 2

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->f:I

    return v0
.end method

.method static synthetic g(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->g:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic h(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a:I

    return v0
.end method

.method static synthetic i(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V
    .locals 4

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lo/gp;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->A:Ljava/lang/String;

    const-string/jumbo v2, "\u7acb\u5373\u4fee\u6539"

    new-instance v3, Lo/db;

    invoke-direct {v3, p0}, Lo/db;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->w:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->w:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/gp;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->A:Ljava/lang/String;

    const-string/jumbo v2, "\u7acb\u5373\u4fee\u6539"

    new-instance v3, Lo/dc;

    invoke-direct {v3, p0}, Lo/dc;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->w:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->w:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    goto :goto_0
.end method

.method static synthetic m(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->y:Z

    return v0
.end method

.method public static synthetic n(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    return-object v0
.end method

.method public static synthetic o(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->C:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->s:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-boolean v0, v0, Lo/fv;->e:Z

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->y:Z

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55\u51fa\u9519"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "SecVerifyActivity handleAsyncResult"

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

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->c()V

    const/16 v0, 0x10

    iput v0, v2, Landroid/os/Message;->what:I

    :goto_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->s:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->s:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->x:Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$c;->sendMessage(Landroid/os/Message;)Z

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

    const-string/jumbo v0, "SecVerifyActivity"

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

    const-string/jumbo v0, "SecVerifyActivity"

    const-string/jumbo v1, "BACK FROM CHANGEPASSWORDACTIVITY SUCCESS."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "SecVerifyActivity"

    const-string/jumbo v1, "BACK FROM CHANGEPASSWORDACTIVITY CANCEL."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_security_verify_getsms_btn"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->C:Ljava/lang/String;

    const-string/jumbo v4, "3"

    new-instance v5, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$d;

    invoke-direct {v5, p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$d;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->C:Ljava/lang/String;

    const-string/jumbo v4, "3"

    new-instance v5, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$d;

    invoke-direct {v5, p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$d;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getVoiceValidCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_security_verify_ok_btn"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->B:I

    const v1, 0x1945b

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->B:I

    const v1, 0x195dd

    if-ne v0, v1, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->m:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->m:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_5

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->m:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_6

    const-string/jumbo v0, "SecVerifyActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "\u767b\u5f55\u4e2d"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->c:Lo/go;

    new-instance v1, Lo/cy;

    invoke-direct {v1, p0}, Lo/cy;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-virtual {v0, v1}, Lo/go;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->C:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->D:Ljava/lang/String;

    new-instance v5, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$a;

    invoke-direct {v5, p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$a;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->securityVerifyByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->B:I

    const v1, 0x1945c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_8

    const-string/jumbo v0, "SecVerifyActivity"

    const-string/jumbo v1, "authnHelper is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "\u767b\u5f55\u4e2d"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->c:Lo/go;

    new-instance v1, Lo/cz;

    invoke-direct {v1, p0}, Lo/cz;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-virtual {v0, v1}, Lo/go;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->t:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->C:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->E:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->F:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->D:Ljava/lang/String;

    new-instance v7, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$a;

    invoke-direct {v7, p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity$a;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-interface/range {v0 .. v7}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->securityVerifyByImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_security_verify_change_image_tv"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->G:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->requestWindowFeature(I)Z

    const-string/jumbo v0, "sso_activity_security_verify"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->setContentView(I)V

    const-string/jumbo v0, "sso_secutity_verify_title_bar"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v0, "sso_security_verify_main_text_tv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TopTipView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->i:Lcom/cmcc/migusso/sdk/view/TopTipView;

    const-string/jumbo v0, "sso_security_verify_phone_number_tv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->l:Landroid/widget/TextView;

    const-string/jumbo v0, "sso_security_verify_smscode_et"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->m:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "sso_security_verify_getsms_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_security_verify_image_code_et"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->p:Landroid/widget/EditText;

    const-string/jumbo v0, "sso_security_verify_image_iv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->q:Landroid/widget/ImageView;

    const-string/jumbo v0, "sso_security_verify_change_image_tv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->r:Landroid/widget/TextView;

    const-string/jumbo v0, "sso_security_verify_ok_btn"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_security_verify_with_phone_rl"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->k:Landroid/widget/RelativeLayout;

    const-string/jumbo v0, "sso_security_verify_with_image_rl"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->B:I

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->C:Ljava/lang/String;

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->B:I

    const v1, 0x1945b

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->B:I

    const v1, 0x195dd

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "resultString"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "msisdn"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->C:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->C:Ljava/lang/String;

    const-string/jumbo v1, "(?<=\\d{3})\\d(?=\\d{2})"

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, " \u83b7\u53d6\u9a8c\u8bc1\u7801"

    :goto_1
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/cv;

    invoke-direct {v1, p0}, Lo/cv;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->m:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/cw;

    invoke-direct {v1, p0}, Lo/cw;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->p:Landroid/widget/EditText;

    new-instance v1, Lo/cx;

    invoke-direct {v1, p0}, Lo/cx;-><init>(Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->n:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, " \u83b7\u53d6\u8bed\u97f3\u9a8c\u8bc1\u7801"

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->B:I

    const v1, 0x1945c

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->i:Lcom/cmcc/migusso/sdk/view/TopTipView;

    const-string/jumbo v1, "sso_str_verify_tip_image"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v0, v0, Lcom/cmcc/migusso/sdk/view/TopTipView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->E:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "resultString"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "sessionid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->F:Ljava/lang/String;

    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->G:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->G:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/migusso/sdk/activity/SecurityVerifyActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method
