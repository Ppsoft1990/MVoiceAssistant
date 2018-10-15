.class public final Lo/gj;
.super Landroid/app/Dialog;
.source "SimpleErrorDialog.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field private i:Lcom/cmcc/migusso/sdk/common/ICallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/gj;->i:Lcom/cmcc/migusso/sdk/common/ICallBack;

    iput-object p1, p0, Lo/gj;->c:Landroid/content/Context;

    iput-object p2, p0, Lo/gj;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/gj;->i:Lcom/cmcc/migusso/sdk/common/ICallBack;

    iput-object p1, p0, Lo/gj;->c:Landroid/content/Context;

    iput-object p2, p0, Lo/gj;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/ICallBack;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/gj;->i:Lcom/cmcc/migusso/sdk/common/ICallBack;

    iput-object p1, p0, Lo/gj;->c:Landroid/content/Context;

    iput-object p2, p0, Lo/gj;->h:Ljava/lang/String;

    iput-object p3, p0, Lo/gj;->i:Lcom/cmcc/migusso/sdk/common/ICallBack;

    return-void
.end method

.method static synthetic a(Lo/gj;)Lcom/cmcc/migusso/sdk/common/ICallBack;
    .locals 1

    iget-object v0, p0, Lo/gj;->i:Lcom/cmcc/migusso/sdk/common/ICallBack;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lo/gj;->requestWindowFeature(I)Z

    iget-object v0, p0, Lo/gj;->c:Landroid/content/Context;

    const-string/jumbo v1, "sso_dialog_union"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gj;->setContentView(I)V

    invoke-virtual {p0}, Lo/gj;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/gj;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/gj;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/gj;->setCancelable(Z)V

    iget-object v0, p0, Lo/gj;->c:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gj;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gj;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gj;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo/gj;->c:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gj;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gj;->c:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gj;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gj;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lo/gj;->c:Landroid/content/Context;

    const-string/jumbo v1, "view_vertical_divider"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/gj;->g:Landroid/view/View;

    iget-object v0, p0, Lo/gj;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo/gj;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/gj;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Lo/gj;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/gj;->f:Landroid/widget/TextView;

    iget v1, p0, Lo/gj;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lo/gj;->f:Landroid/widget/TextView;

    new-instance v1, Lo/gk;

    invoke-direct {v1, p0}, Lo/gk;-><init>(Lo/gj;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
