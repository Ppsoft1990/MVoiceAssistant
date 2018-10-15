.class public final Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;
.source "AbcUpgradeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$b;,
        Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;,
        Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;
    }
.end annotation


# instance fields
.field private A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

.field private B:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

.field private C:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

.field private D:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

.field private a:I

.field private f:I

.field private g:Ljava/util/Timer;

.field private h:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private i:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private j:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private m:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

.field private n:Landroid/widget/LinearLayout;

.field private o:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

.field private w:Lcom/cmcc/migusso/sdk/common/TokenProcess;

.field private x:Lo/gj;

.field private y:Lo/gl;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a:I

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a:I

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->f:I

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;I)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->B:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

    sget v1, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->a:I

    invoke-direct {v0, p0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;I)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->C:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

    sget v1, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;->b:I

    invoke-direct {v0, p0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;I)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->D:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

    return-void
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;I)I
    .locals 0

    iput p1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->f:I

    return p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lo/gj;)Lo/gj;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->x:Lo/gj;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lo/gl;)Lo/gl;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->y:Lo/gl;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v4, 0x0

    const/16 v3, 0x13

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const-string/jumbo v1, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5931\u8d25"

    invoke-virtual {v0, v3, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

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

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v1, :cond_4

    const v1, 0x19456

    if-eq v1, v0, :cond_2

    const v1, 0x19457

    if-ne v1, v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const-string/jumbo v2, "smsCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const-string/jumbo v2, "resultString"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->g:Ljava/util/Timer;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->g:Ljava/util/Timer;

    new-instance v1, Lo/b;

    invoke-direct {v1, p0}, Lo/b;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->f:I

    return v0
.end method

.method static synthetic b(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lorg/json/JSONObject;)V
    .locals 5

    const/16 v4, 0x14

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const-string/jumbo v1, "\u5347\u7ea7\u5931\u8d25"

    invoke-virtual {v0, v4, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const/4 v2, 0x0

    const-string/jumbo v3, "resultString"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)I
    .locals 2

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->f:I

    return v0
.end method

.method static synthetic c(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Lorg/json/JSONObject;)V
    .locals 4

    const/16 v3, 0x16

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v3, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "AbcUpgradeActivity"

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

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const-string/jumbo v1, "resultString"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "token"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const-string/jumbo v1, "token is null"

    invoke-virtual {v0, v3, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$b;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$b;->start()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->g:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic e(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Ljava/util/Timer;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->g:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic f(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a:I

    return v0
.end method

.method static synthetic g(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lo/gl;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->y:Lo/gl;

    return-object v0
.end method

.method static synthetic h(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lo/gj;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->x:Lo/gj;

    return-object v0
.end method

.method static synthetic i(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->v:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    return-object v0
.end method

.method public static synthetic j(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic k(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic l(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->z:Z

    return v0
.end method

.method public static synthetic m(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)V
    .locals 7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->o:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_1

    const-string/jumbo v0, "AbcUpgradeActivity"

    const-string/jumbo v1, "mAuthnHelper  is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->b()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->o:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->e:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->s:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->D:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

    invoke-interface/range {v0 .. v6}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0
.end method

.method public static synthetic n(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    return-object v0
.end method

.method static synthetic o(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->w:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->o:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ABC_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "TARGET_PHONE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "NEEDSETPWD"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->z:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "upgradeType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "nickName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->u:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->l:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->v:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->w:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    const/16 v2, 0x16

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const-string/jumbo v1, "\u767b\u5f55\u51fa\u9519"

    invoke-virtual {v0, v2, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "AbcUpgradeActivity handleAsyncResult"

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

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->w:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->w:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "\u7531\u4e8e\u5ba2\u6237\u7aef\u539f\u56e0\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->l:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->m:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v3}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->f:I

    iget v5, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->a:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v4, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_2
    iget-boolean v4, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->z:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    :goto_3
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v4, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    goto :goto_3
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "cb_abc_ug_getsms"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AbcUpgradeActivity"

    const-string/jumbo v1, "phone num is not valid"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->o:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_2

    const-string/jumbo v0, "AbcUpgradeActivity"

    const-string/jumbo v1, "mAuthnHelper  is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->o:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->q:Ljava/lang/String;

    const-string/jumbo v4, "8"

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->B:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "cb_abc_ug_ok"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->l:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->m:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "AbcUpgradeActivity"

    const-string/jumbo v1, "phone num is not valid"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    :cond_5
    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->l:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->o:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-nez v0, :cond_7

    const-string/jumbo v0, "AbcUpgradeActivity"

    const-string/jumbo v1, "mAuthnHelper  is null"

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->b()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->o:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->s:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->t:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->u:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->C:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$c;

    invoke-interface/range {v0 .. v9}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->doAbcAccountUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sso_activity_abc_upgrade"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->setContentView(I)V

    const-string/jumbo v0, "sso_upgrade_title_bar"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    const-string/jumbo v0, "cet_abc_ug_smscode"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->l:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    const-string/jumbo v0, "tv_abc_phone"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->k:Landroid/widget/TextView;

    const-string/jumbo v0, "cb_abc_ug_getsms"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "cb_abc_ug_ok"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    const-string/jumbo v0, "pet_abc_upgrade_newpwd"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->m:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    const-string/jumbo v0, "llt_abc_upgrade_need_set_pwd"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/a;

    invoke-direct {v1, p0}, Lo/a;-><init>(Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->l:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->m:Lcom/cmcc/migusso/sdk/view/PasswordEditText;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/PasswordEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->j:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->i:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbstractSsoBaseActivity;->onDestroy()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->o:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->A:Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity$a;

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->x:Lo/gj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->x:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->x:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->y:Lo/gl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->y:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->y:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->g:Ljava/util/Timer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/AbcUpgradeActivity;->g:Ljava/util/Timer;

    :cond_3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
