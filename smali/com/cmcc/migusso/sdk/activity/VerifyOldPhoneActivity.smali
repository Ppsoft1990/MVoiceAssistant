.class public Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "VerifyOldPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private f:I

.field private g:I

.field private h:Ljava/util/Timer;

.field private i:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private l:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private m:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

.field private r:J

.field private s:Lo/gj;

.field private t:Lo/gl;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->a:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->f:I

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->f:I

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->g:I

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->s:Lo/gj;

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->t:Lo/gl;

    return-void
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;I)I
    .locals 0

    iput p1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->g:I

    return p1
.end method

.method public static synthetic a(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->h:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;ILjava/lang/String;)V
    .locals 2

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->s:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->s:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->s:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->s:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lo/gl;

    invoke-direct {v0, p1, p3}, Lo/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->t:Lo/gl;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->t:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->show()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x192bf -> :sswitch_0
        0x192c2 -> :sswitch_1
        0x192c4 -> :sswitch_2
        0x192c5 -> :sswitch_2
        0x19456 -> :sswitch_3
        0x19457 -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;Lorg/json/JSONObject;)V
    .locals 3

    const/16 v2, 0x15

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;->sendMessage(Landroid/os/Message;)Z

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

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const v1, 0x18e70

    if-eq v0, v1, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x16

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->a:Z

    return v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->l:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method private static b(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    if-eqz p1, :cond_0

    const-string/jumbo v0, "resultString"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "   \u624b\u673a\u53f7\u7801\u672a\u6ce8\u518c"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x192bf
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->g:I

    return v0
.end method

.method static synthetic d(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method static synthetic e(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)I
    .locals 2

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->g:I

    return v0
.end method

.method public static synthetic f(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->h:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic g(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->f:I

    return v0
.end method

.method static synthetic h(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic j(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "msisdn"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "openIDType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->v:Ljava/lang/String;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    if-eqz p3, :cond_1

    const-string/jumbo v0, "newbindphone"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "newbindphone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->setResult(ILandroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_change_phone_getSmsBt"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u539f\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "\u539f\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_3

    const-string/jumbo v0, "VerifyOldPhoneActivity"

    const-string/jumbo v1, "mAuthnHelp is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    const-string/jumbo v4, "7"

    new-instance v5, Lo/fe;

    invoke-direct {v5, p0}, Lo/fe;-><init>(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_change_phone_Bt"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->r:J

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u539f\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "\u539f\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    iget-wide v2, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->r:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v8, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_8

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    iget-wide v2, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->r:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;

    sget-object v7, Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;->FAIL:Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;

    const-string/jumbo v8, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-static/range {v0 .. v8}, Lcom/cmcc/migusso/ssoutil/UemUtils;->actionAuth(Landroid/content/Context;Ljava/lang/String;JJLcom/cmcc/migusso/ssoutil/UemUtils$SMSResult;Lcom/cmcc/migusso/ssoutil/UemUtils$ResultCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->p:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->o:Ljava/lang/String;

    new-instance v5, Lo/fg;

    invoke-direct {v5, p0}, Lo/fg;-><init>(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->verifyOldPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_activity_verify_old_phone"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->a()V

    const-string/jumbo v0, "sso_Verify_bind_phone_title_bar"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->i:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v0, "sso_change_phoneNum_Tv"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->j:Landroid/widget/TextView;

    const-string/jumbo v0, "sso_change_phone_usernameEt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "sso_change_phone_Bt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->l:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "sso_change_phone_getSmsBt"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x7

    const-string/jumbo v3, "****"

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->i:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/fb;

    invoke-direct {v1, p0}, Lo/fb;-><init>(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/fc;

    invoke-direct {v1, p0}, Lo/fc;-><init>(Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/fd;

    invoke-direct {v1}, Lo/fd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->l:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->h:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->q:Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->s:Lo/gj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->s:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/VerifyOldPhoneActivity;->s:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->dismiss()V

    :cond_2
    return-void
.end method
