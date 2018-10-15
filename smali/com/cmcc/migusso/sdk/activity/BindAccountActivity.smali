.class public Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;
.super Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;
.source "BindAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/Button;

.field private E:Landroid/widget/Button;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/lang/String;

.field private O:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

.field private P:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

.field private Q:Lcom/cmcc/migusso/sdk/common/ICallBack;

.field private R:Lo/gp;

.field private S:Lo/gp;

.field private T:Lo/gp;

.field private U:Lo/gp;

.field private V:Lo/gp;

.field private W:Z

.field private X:Lcom/cmcc/migusso/sdk/common/ICallBack;

.field public f:Lcom/cmcc/migusso/sdk/view/CircleImageView;

.field private h:Lcom/cmcc/migusso/sdk/view/TitleBar;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic B(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->l:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic C(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->q:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic D(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->A:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->O:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    return-object v0
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "resultString"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "\u7ed1\u5b9a\u5931\u8d25\uff1a\u8be5%s\u5e10\u53f7\u5df2\u7ed1\u5b9a\u5176\u4ed6\u54aa\u5495\u5e10\u53f7"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u7ed1\u5b9a\u5931\u8d25\uff1a\u5f53\u524d\u8d26\u53f7\u5df2\u7ed1\u5b9a\u5176\u4ed6%s\u8d26\u53f7"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x19467
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->M:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(IZLjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v3

    iget-boolean v3, v3, Lo/fv;->t:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v3

    iget-object v3, v3, Lo/fv;->u:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v4

    iget-object v4, v4, Lo/fv;->v:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/mob/MobSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0, p3}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    sget-object v4, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v0, "\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef"

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    const-string/jumbo v3, "QQ"

    iput-object v3, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    const-string/jumbo v3, "WEIBO"

    iput-object v3, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    const-string/jumbo v3, "WECHAT"

    iput-object v3, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g:Ljava/lang/String;

    const-string/jumbo v4, "touch TAOBAO"

    invoke-static {v3, v4}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b()V

    sget-object v4, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(Z)V

    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v1}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    :cond_2
    invoke-virtual {v3, v2}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    new-instance v0, Lo/r;

    invoke-direct {v0, p0, p1, p2}, Lo/r;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;IZ)V

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;ILjava/util/HashMap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(IZLjava/util/HashMap;)V

    return-void
.end method

.method public static synthetic a(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->P:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->N:Ljava/lang/String;

    new-instance v8, Lo/h;

    invoke-direct {v8, p0}, Lo/h;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v0 .. v8}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->G:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->G:Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->W:Z

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->P:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->N:Ljava/lang/String;

    new-instance v8, Lo/i;

    invoke-direct {v8, p0}, Lo/i;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v0 .. v8}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->unBindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->N:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->X:Lcom/cmcc/migusso/sdk/common/ICallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->X:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-interface {v0}, Lcom/cmcc/migusso/sdk/common/ICallBack;->callback()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->finish()V

    return-void
.end method

.method private e(I)V
    .locals 2

    invoke-static {}, Lo/fs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b()V

    new-instance v1, Lo/j;

    invoke-direct {v1, p0, v0, p1}, Lo/j;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic e(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->e(I)V

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "WECHAT"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u5fae\u4fe1"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "QQ"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "QQ"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "WEIBO"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u5fae\u535a"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ALIPAY"

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u652f\u4ed8\u5b9d"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic f(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->M:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->C:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_1
    :goto_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0, v6}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_5
    return-void

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->M:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "accountType"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "nickname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "WECHAT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->B:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->r:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    :cond_5
    :try_start_1
    const-string/jumbo v3, "QQ"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->C:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->s:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_6
    const-string/jumbo v3, "WEIBO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->D:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    const-string/jumbo v3, "ALIPAY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->E:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->u:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_9
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_a

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->C:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_b

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method static synthetic g(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->B:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->r:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->m:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->C:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic m(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->s:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic o(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->D:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic q(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->t:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic s(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->E:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic u(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->u:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic v(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->W:Z

    return v0
.end method

.method static synthetic y(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic z(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->e()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/cmcc/migusso/sdk/auth/MiguAuthFactory;->createMiguApi(Landroid/content/Context;)Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->P:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    new-instance v0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    invoke-direct {v0, p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->O:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "LoginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->H:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "nickname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->I:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->J:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "avatar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->K:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "openIdType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->G:Ljava/lang/String;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->n:Lcom/cmcc/migusso/sdk/common/ICallBack;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->X:Lcom/cmcc/migusso/sdk/common/ICallBack;

    new-instance v0, Lo/g;

    invoke-direct {v0, p0}, Lo/g;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->Q:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->i:Ljava/util/Map;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a:Ljava/util/Map;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    const-string/jumbo v0, "newbindphone"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->l:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->q:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->A:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_0

    const-string/jumbo v0, "newbindphone"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->H:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->H:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/cmcc/migusso/ssoutil/HistoryInfoUtils;->removeUser(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_bind_phone_RL"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lo/gp;

    const-string/jumbo v1, "\u60a8\u786e\u5b9a\u8981\u66f4\u6362\u7ed1\u5b9a\u624b\u673a\u5417\uff1f"

    const-string/jumbo v2, "\u66f4\u6362"

    new-instance v3, Lo/m;

    invoke-direct {v3, p0}, Lo/m;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->R:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->R:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_bind_wechat_RL"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    new-instance v0, Lo/gp;

    const-string/jumbo v1, "\u60a8\u786e\u5b9a\u8981\u89e3\u7ed1\u8be5\u5fae\u4fe1\u5417\uff1f"

    const-string/jumbo v2, "\u89e3\u7ed1"

    new-instance v3, Lo/n;

    invoke-direct {v3, p0}, Lo/n;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->S:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->S:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_bind_qq_RL"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    new-instance v0, Lo/gp;

    const-string/jumbo v1, "\u60a8\u786e\u5b9a\u8981\u89e3\u7ed1\u8be5QQ\u5417\uff1f"

    const-string/jumbo v2, "\u89e3\u7ed1"

    new-instance v3, Lo/o;

    invoke-direct {v3, p0}, Lo/o;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->T:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->T:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_weibo_RL"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    new-instance v0, Lo/gp;

    const-string/jumbo v1, "\u60a8\u786e\u5b9a\u8981\u89e3\u7ed1\u8be5\u5fae\u535a\u5417\uff1f"

    const-string/jumbo v2, "\u89e3\u7ed1"

    new-instance v3, Lo/p;

    invoke-direct {v3, p0}, Lo/p;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->U:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->U:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_alipay_RL"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    new-instance v0, Lo/gp;

    const-string/jumbo v1, "\u60a8\u786e\u5b9a\u8981\u89e3\u7ed1\u8be5\u652f\u4ed8\u5b9d\u5417\uff1f"

    const-string/jumbo v2, "\u89e3\u7ed1"

    new-instance v3, Lo/q;

    invoke-direct {v3, p0}, Lo/q;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lo/gp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->V:Lo/gp;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->V:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->show()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "btn_bind_phone"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->H:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcc/migusso/sdk/activity/EmailBindPhoneActivty;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "userName"

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "bindType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "FLAG_NEED_LOGIN"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-class v2, Lcom/cmcc/migusso/sdk/activity/ThirdBindPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "openID"

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openIDType"

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "authntype"

    const-string/jumbo v2, "MIGU"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "bindType"

    const-string/jumbo v2, "REQUIRED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "tips"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "needLogin"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "businesstoken"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "btn_bind_wechat"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->r:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v3, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(IZLjava/util/HashMap;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "btn_bind_qq"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->s:Ljava/util/HashMap;

    invoke-direct {p0, v3, v3, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(IZLjava/util/HashMap;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "btn_bind_weibo"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_a

    invoke-static {}, Lo/fv;->a()Lo/fv;

    move-result-object v0

    iget-object v0, v0, Lo/fv;->q:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v3, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a(IZLjava/util/HashMap;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v2, "btn_bind_alipay"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v3}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->e(I)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    invoke-super {p0, p1}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->a()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_activity_bind_account"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_phone_title_bar"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/TitleBar;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_account_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_account_nicknameTV"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_account_loginAccountTV"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_head_iv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcc/migusso/sdk/view/CircleImageView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->f:Lcom/cmcc/migusso/sdk/view/CircleImageView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_phone_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_wechat_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_bind_qq_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_weibo_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_alipay_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->p:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_phone_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->q:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_wechat_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->r:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_qq_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->s:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_weibo_account_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->t:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_alipay_account_RL"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->u:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_phone_no_Tv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_weichat_account_Tv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_qq_account_Tv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_weibo_account_Tv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_alipay_account_Tv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "btn_bind_phone"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->A:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "btn_bind_wechat"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->B:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "btn_bind_qq"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->C:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "btn_bind_weibo"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->D:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v1, "btn_bind_alipay"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->E:Landroid/widget/Button;

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    const-string/jumbo v3, "sso_color_31363e"

    invoke-static {v2, v3}, Lcom/cmcc/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->k:Landroid/widget/TextView;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->k:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lo/ft;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->f:Lcom/cmcc/migusso/sdk/view/CircleImageView;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->K:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->Q:Lcom/cmcc/migusso/sdk/common/ICallBack;

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ft;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V

    new-array v1, v6, [Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lo/ft;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->P:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->b()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->P:Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;

    iget-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->H:Ljava/lang/String;

    const-string/jumbo v4, "WECHAT&WEIBO&QQ&ALIPAY"

    new-instance v5, Lo/l;

    invoke-direct {v5, p0}, Lo/l;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    invoke-interface/range {v0 .. v5}, Lcom/cmcc/migusso/sdk/auth/MiguAuthApi;->queryAllUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/auth/TokenListener;)V

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->h:Lcom/cmcc/migusso/sdk/view/TitleBar;

    new-instance v1, Lo/k;

    invoke-direct {v1, p0}, Lo/k;-><init>(Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/view/TitleBar;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->C:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->D:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->E:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->f:Lcom/cmcc/migusso/sdk/view/CircleImageView;

    invoke-virtual {v0, v4}, Lcom/cmcc/migusso/sdk/view/CircleImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/cmcc/migusso/sdk/activity/AbsThirdLoginActivity;->onDestroy()V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->O:Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;

    invoke-virtual {v0, v1}, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->R:Lo/gp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->R:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->R:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->dismiss()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->R:Lo/gp;

    :cond_0
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->S:Lo/gp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->S:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->S:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->dismiss()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->S:Lo/gp;

    :cond_1
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->T:Lo/gp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->T:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->T:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->dismiss()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->T:Lo/gp;

    :cond_2
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->U:Lo/gp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->U:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->U:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->dismiss()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->U:Lo/gp;

    :cond_3
    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->V:Lo/gp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->V:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->V:Lo/gp;

    invoke-virtual {v0}, Lo/gp;->dismiss()V

    iput-object v1, p0, Lcom/cmcc/migusso/sdk/activity/BindAccountActivity;->V:Lo/gp;

    :cond_4
    return-void
.end method
