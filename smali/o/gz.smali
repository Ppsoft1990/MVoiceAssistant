.class public final Lo/gz;
.super Landroid/app/Dialog;
.source "UpgradeSuccessDialog.java"


# instance fields
.field public a:Lcom/cmcc/migusso/sdk/common/ICallBack;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/gz;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lo/gz;)Lcom/cmcc/migusso/sdk/common/ICallBack;
    .locals 1

    iget-object v0, p0, Lo/gz;->a:Lcom/cmcc/migusso/sdk/common/ICallBack;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/gz;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lo/gz;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/gz;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v3}, Lo/gz;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/gz;->setCancelable(Z)V

    iget-object v0, p0, Lo/gz;->b:Landroid/content/Context;

    const-string/jumbo v1, "sso_dialog_union"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gz;->setContentView(I)V

    iget-object v0, p0, Lo/gz;->b:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gz;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gz;->b:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gz;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gz;->b:Landroid/content/Context;

    const-string/jumbo v1, "view_vertical_divider"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/gz;->g:Landroid/view/View;

    iget-object v0, p0, Lo/gz;->b:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gz;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gz;->b:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gz;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gz;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gz;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_str_upgrade_success_tip1"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lo/gz;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gz;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_str_upgrade_success_tip2"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lo/gz;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lo/gz;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gz;->b:Landroid/content/Context;

    const-string/jumbo v2, "sso_color_dialog_text_main"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lo/gz;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lo/gz;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo/gz;->e:Landroid/widget/TextView;

    new-instance v1, Lo/ha;

    invoke-direct {v1, p0}, Lo/ha;-><init>(Lo/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
