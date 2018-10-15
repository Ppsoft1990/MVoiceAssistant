.class public final Lo/fx;
.super Landroid/app/Dialog;
.source "BindSuccessDialog.java"


# instance fields
.field public a:Lcom/cmcc/migusso/sdk/common/ICallBack;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Timer;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "loading_dialog"

    invoke-static {p1, v0}, Lcom/cmcc/util/ResourceUtil;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lo/fx;->b:Landroid/content/Context;

    iput-object p2, p0, Lo/fx;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lo/fx;)Ljava/util/Timer;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo/fx;->d:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic b(Lo/fx;)Lcom/cmcc/migusso/sdk/common/ICallBack;
    .locals 1

    iget-object v0, p0, Lo/fx;->a:Lcom/cmcc/migusso/sdk/common/ICallBack;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/fx;->requestWindowFeature(I)Z

    iget-object v0, p0, Lo/fx;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_toast"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/fx;->setContentView(I)V

    invoke-virtual {p0}, Lo/fx;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/fx;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v3}, Lo/fx;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/fx;->setCancelable(Z)V

    iget-object v0, p0, Lo/fx;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_toast_msg_tv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/fx;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lo/fx;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_toast_iv"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/fx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/fx;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lo/fx;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/fx;->b:Landroid/content/Context;

    const-string/jumbo v2, "icon_bind_success"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lo/fx;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lo/fx;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lo/fx;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lo/fx;->d:Ljava/util/Timer;

    iget-object v0, p0, Lo/fx;->d:Ljava/util/Timer;

    new-instance v1, Lo/fy;

    invoke-direct {v1, p0}, Lo/fy;-><init>(Lo/fx;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
