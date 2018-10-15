.class public Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;
.source "ThirdBindPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$a;,
        Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:Ljava/util/Timer;

.field private E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

.field private F:Lo/gj;

.field private G:Lo/gl;

.field private H:Lo/fx;

.field private I:Lo/gp;

.field private J:Lcom/cmcc/migusso/sdk/common/TokenProcess;

.field private K:Lcom/cmcc/migusso/sdk/common/JSONCallBack;

.field private L:Lcom/cmcc/migusso/sdk/auth/TokenListener;

.field private g:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private h:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private i:Lcom/cmcc/migusso/sdk/view/TopTipView;

.field private j:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

.field private l:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private m:Lcom/cmcc/migusso/sdk/view/CircleButton;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->y:Z

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->z:Z

    iput-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->A:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->B:I

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->B:I

    iput v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->C:I

    return-void
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/ClearEditText;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->j:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;I)Ljava/lang/String;
    .locals 5

    sparse-switch p1, :sswitch_data_0

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
    const-string/jumbo v0, "\u7b2c\u4e09\u65b9\u767b\u5f55\u6388\u6743\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "\u5f53\u524d\u624b\u673a\u53f7\u7801\u5df2\u7ed1\u5b9a\u5176\u4ed6%s\u5e10\u53f7\uff0c\u8bf7\u66f4\u6362\u540e\u91cd\u8bd5"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->q:Ljava/lang/String;

    const-string/jumbo v4, "QQ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v0, "QQ"

    :goto_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "WECHAT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v0, "\u5fae\u4fe1"

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "WEIBO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v0, "\u5fae\u535a"

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "ALIPAY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u652f\u4ed8\u5b9d"

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "\u8be5\u624b\u673a\u53f7\u7801\u5df2\u6ce8\u518c\uff0c\u8bf7\u66f4\u6362\u53f7\u7801\u91cd\u8bd5\u6216\u4f7f\u7528\u624b\u673a\u53f7\u767b\u5f55\u3002"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "\u8bbf\u95ee\u8d85\u65f6\uff0c\u8bf7\u91cd\u8bd5"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x192bf -> :sswitch_0
        0x192c2 -> :sswitch_1
        0x192e8 -> :sswitch_3
        0x1932b -> :sswitch_5
        0x19361 -> :sswitch_4
        0x19366 -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->D:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lo/fx;)Lo/fx;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->H:Lo/fx;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lo/gj;)Lo/gj;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    return-object p1
.end method

.method public static synthetic a(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0, p1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;ILjava/lang/String;)V
    .locals 6

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Lo/gj;

    invoke-direct {v0, p0, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p3}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lo/gl;

    invoke-direct {v0, p1, p3}, Lo/gl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->G:Lo/gl;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->G:Lo/gl;

    invoke-virtual {v0}, Lo/gl;->show()V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    new-instance v2, Lo/ed;

    invoke-direct {v2, p1}, Lo/ed;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    invoke-direct {v0, v1, p3, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    const-string/jumbo v1, "\u597d\u7684"

    iput-object v1, v0, Lo/gj;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto :goto_0

    :sswitch_6
    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->y:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "REQUIRED"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo/gp;

    const-string/jumbo v2, "\u8be5\u624b\u673a\u53f7\u7801\u5df2\u6ce8\u518c\uff0c\u8bf7\u66f4\u6362\u53f7\u7801\u91cd\u8bd5\u6216\u4f7f\u7528\u624b\u673a\u53f7\u767b\u5f55\u3002"

    const-string/jumbo v3, "\u66f4\u6362\u53f7\u7801"

    const-string/jumbo v4, "\u624b\u673a\u53f7\u767b\u5f55"

    new-instance v5, Lo/ee;

    invoke-direct {v5, p0, p1}, Lo/ee;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->I:Lo/gp;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->I:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/gj;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    new-instance v2, Lo/du;

    invoke-direct {v2, p1}, Lo/du;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    invoke-direct {v0, v1, p3, v2}, Lo/gj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    iput-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    const-string/jumbo v1, "\u597d\u7684"

    iput-object v1, v0, Lo/gj;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->show()V

    goto/16 :goto_0

    nop

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
        0x192e8 -> :sswitch_5
        0x19361 -> :sswitch_6
        0x19456 -> :sswitch_4
        0x19457 -> :sswitch_4
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Lorg/json/JSONObject;)V
    .locals 4

    const/16 v3, 0x14

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-string/jumbo v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee\u4e86\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendMessage(Landroid/os/Message;)Z

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

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$a;->start()V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;I)I
    .locals 0

    iput p1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->C:I

    return p1
.end method

.method private static b(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "resultString"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e()V

    return-void
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->A:Z

    return p1
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->z:Z

    return v0
.end method

.method public static synthetic d(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->C:I

    return v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)I
    .locals 1

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->B:I

    return v0
.end method

.method private e()V
    .locals 3

    const v2, 0x18f9d

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->y:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "APP"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->L:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OPTIONAL"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f()V

    :goto_0
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "\u7528\u6237\u53d6\u6d88\u7ed1\u5b9a"

    invoke-static {v2, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->L:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    invoke-interface {v1, v0}, Lcom/cmcc/migusso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "OPTIONAL"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo/cc;->a()Lo/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/cc;->b(Landroid/app/Activity;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->setResult(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->setResult(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->K:Lcom/cmcc/migusso/sdk/common/JSONCallBack;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u7528\u6237\u53d6\u6d88\u7ed1\u5b9a"

    invoke-static {v2, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->K:Lcom/cmcc/migusso/sdk/common/JSONCallBack;

    invoke-interface {v1, v0}, Lcom/cmcc/migusso/sdk/common/JSONCallBack;->callback(Lorg/json/JSONObject;)V

    :cond_4
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->finish()V

    goto :goto_1
.end method

.method public static synthetic f(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->l:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method private f()V
    .locals 8

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->g:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->q:Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lo/dv;

    invoke-direct {v6, p0}, Lo/dv;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    iget-object v7, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->s:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getAccessTokenByThirdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->A:Z

    return v0
.end method

.method public static synthetic h(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/view/CircleButton;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    return-object v0
.end method

.method public static synthetic i(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    return-object v0
.end method

.method public static synthetic j(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->D:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic k(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)I
    .locals 2

    iget v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->C:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->C:I

    return v0
.end method

.method static synthetic l(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->y:Z

    return v0
.end method

.method static synthetic m(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f()V

    return-void
.end method

.method static synthetic n(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic o(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/common/JSONCallBack;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->K:Lcom/cmcc/migusso/sdk/common/JSONCallBack;

    return-object v0
.end method

.method static synthetic p(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lo/fx;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->H:Lo/fx;

    return-object v0
.end method

.method public static synthetic q(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic r(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/auth/TokenListener;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->L:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    return-object v0
.end method

.method static synthetic s(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lo/gj;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    return-object v0
.end method

.method static synthetic t(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Lcom/cmcc/migusso/sdk/common/TokenProcess;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->J:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    return-object v0
.end method

.method static synthetic u(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->g:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->j:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->J:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->o:Lcom/cmcc/migusso/sdk/common/JSONCallBack;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->K:Lcom/cmcc/migusso/sdk/common/JSONCallBack;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->w:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->L:Lcom/cmcc/migusso/sdk/auth/TokenListener;

    return-void
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "\u767b\u5f55\u51fa\u9519"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " handleAsyncResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->J:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x14

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->J:Lcom/cmcc/migusso/sdk/common/TokenProcess;

    invoke-interface {v0, p1}, Lcom/cmcc/migusso/sdk/common/TokenProcess;->afterLogin(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "\u7531\u4e8e\u5ba2\u6237\u7aef\u539f\u56e0\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f:Ljava/lang/String;

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

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v3, :cond_0

    sget-object v0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->f:Ljava/lang/String;

    const-string/jumbo v1, "BACK FROM SMSLOGINACTIVITY SUCCESS."

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e()V

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string/jumbo v2, "sso_get_valid_code_btn"

    invoke-static {p0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/cmcc/util/CommonUtils;->isFastClick()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->j:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->g:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->l:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v1, v0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    const-string/jumbo v4, "9"

    const-string/jumbo v0, "SERVICE"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v4, "10"

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->g:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->p:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->q:Ljava/lang/String;

    new-instance v7, Lo/dy;

    invoke-direct {v7, p0}, Lo/dy;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    invoke-interface/range {v0 .. v7}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->getSmsCodeForBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string/jumbo v2, "sso_third_bind_confirm_btn"

    invoke-static {p0, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->j:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_8

    :cond_7
    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->g:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->y:Z

    if-eqz v1, :cond_c

    const/16 v5, 0xa

    :goto_1
    const-string/jumbo v1, "\u7ed1\u5b9a\u4e2d"

    invoke-virtual {p0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Z)V

    const-string/jumbo v0, "MIGU"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->y:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->g:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->q:Ljava/lang/String;

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->s:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->u:Ljava/lang/String;

    iget-object v10, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->t:Ljava/lang/String;

    new-instance v11, Lo/ea;

    invoke-direct {v11, p0}, Lo/ea;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    invoke-interface/range {v0 .. v11}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->thirdPartyBindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->g:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->p:Ljava/lang/String;

    const-string/jumbo v4, "DEFAULT"

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->s:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->u:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    new-instance v8, Lo/eb;

    invoke-direct {v8, p0}, Lo/eb;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    invoke-interface/range {v0 .. v8}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->g:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->o:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->u:Ljava/lang/String;

    iget-object v7, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->v:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->s:Ljava/lang/String;

    new-instance v9, Lo/ec;

    invoke-direct {v9, p0}, Lo/ec;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    invoke-interface/range {v0 .. v9}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->bindPhoneForService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "sso_third_bind_phone_skip_tv"

    invoke-static {p0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->e()V

    goto/16 :goto_0

    :cond_c
    move v5, v0

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sso_activity_bind_phone_by_third"

    invoke-static {p0, v0}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_third_bind_phone_title_bar"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_third_bind_phone_tip_tv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TopTipView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i:Lcom/cmcc/migusso/sdk/view/TopTipView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_phone_num_et"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->j:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_valid_code_et"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_get_valid_code_btn"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->l:Lcom/cmcc/migusso/sdk/view/CircleButton;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_third_bind_confirm_btn"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleButton;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_third_bind_phone_skip_tv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "openID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "openIDType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "authntype"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "bindType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "businesstoken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->v:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "needLogin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->y:Z

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tips"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->w:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intentfrom"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->x:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->i:Ljava/util/Map;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i:Lcom/cmcc/migusso/sdk/view/TopTipView;

    invoke-virtual {v0, v3}, Lcom/cmcc/migusso/sdk/view/TopTipView;->setVisibility(I)V

    :goto_0
    const-string/jumbo v0, "REQUIRED"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->j:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->z:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    invoke-virtual {v0}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->A:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->l:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->t:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->l:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->m:Lcom/cmcc/migusso/sdk/view/CircleButton;

    invoke-virtual {v0, p0}, Lcom/cmcc/migusso/sdk/view/CircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/dt;

    invoke-direct {v1, p0}, Lo/dt;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->j:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/dw;

    invoke-direct {v1, p0}, Lo/dw;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->k:Lcom/cmcc/migusso/sdk/view/ClearEditText;

    new-instance v1, Lo/dx;

    invoke-direct {v1, p0}, Lo/dx;-><init>(Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i:Lcom/cmcc/migusso/sdk/view/TopTipView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TopTipView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->i:Lcom/cmcc/migusso/sdk/view/TopTipView;

    invoke-virtual {v0, v2}, Lcom/cmcc/migusso/sdk/view/TopTipView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onDestroy()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->g:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->E:Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->D:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->D:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->D:Ljava/util/Timer;

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;->F:Lo/gj;

    invoke-virtual {v0}, Lo/gj;->dismiss()V

    :cond_2
    return-void
.end method
