.class public final Lo/gp;
.super Landroid/app/Dialog;
.source "StandardChoiceDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/cmcc/migusso/sdk/common/BoolCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/gp;->g:Ljava/lang/String;

    iput-object v0, p0, Lo/gp;->h:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    iput-object p1, p0, Lo/gp;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/gp;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/gp;->f:Ljava/lang/String;

    iput-object p4, p0, Lo/gp;->h:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/gp;->g:Ljava/lang/String;

    iput-object v0, p0, Lo/gp;->h:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    iput-object p1, p0, Lo/gp;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/gp;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/gp;->f:Ljava/lang/String;

    iput-object p4, p0, Lo/gp;->g:Ljava/lang/String;

    iput-object p5, p0, Lo/gp;->h:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    return-void
.end method

.method static synthetic a(Lo/gp;)Lcom/cmcc/migusso/sdk/common/BoolCallBack;
    .locals 1

    iget-object v0, p0, Lo/gp;->h:Lcom/cmcc/migusso/sdk/common/BoolCallBack;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lo/gp;->requestWindowFeature(I)Z

    iget-object v0, p0, Lo/gp;->a:Landroid/content/Context;

    const-string/jumbo v1, "sso_dialog_union"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gp;->setContentView(I)V

    invoke-virtual {p0}, Lo/gp;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/gp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/gp;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/gp;->setCancelable(Z)V

    iget-object v0, p0, Lo/gp;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gp;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gp;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gp;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gp;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gp;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gp;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo/gp;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo/gp;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/gp;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lo/gp;->b:Landroid/widget/TextView;

    new-instance v1, Lo/gq;

    invoke-direct {v1, p0}, Lo/gq;-><init>(Lo/gp;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lo/gp;->d:Landroid/widget/TextView;

    new-instance v1, Lo/gr;

    invoke-direct {v1, p0}, Lo/gr;-><init>(Lo/gp;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
