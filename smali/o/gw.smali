.class public final Lo/gw;
.super Landroid/app/Dialog;
.source "UpgradeRemindDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/gw;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/gw;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/gw;->f:Ljava/lang/String;

    iput-object p4, p0, Lo/gw;->g:Ljava/lang/String;

    const-string/jumbo v0, "type"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lo/gw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/gw;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lo/gw;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/gw;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lo/gw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/gw;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lo/gw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/gw;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lo/gw;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lo/gw;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/gw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/gw;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/gw;->setCancelable(Z)V

    iget-object v0, p0, Lo/gw;->a:Landroid/content/Context;

    const-string/jumbo v1, "sso_dialog_union"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gw;->setContentView(I)V

    iget-object v0, p0, Lo/gw;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gw;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gw;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gw;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gw;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gw;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gw;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gw;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_str_upgrade_remind_message"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lo/gw;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gw;->a:Landroid/content/Context;

    const-string/jumbo v2, "sso_str_upgrade_button_upgrade"

    invoke-static {v1, v2}, Lcom/cmcc/util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lo/gw;->b:Landroid/widget/TextView;

    new-instance v1, Lo/gx;

    invoke-direct {v1, p0}, Lo/gx;-><init>(Lo/gw;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lo/gw;->d:Landroid/widget/TextView;

    new-instance v1, Lo/gy;

    invoke-direct {v1, p0}, Lo/gy;-><init>(Lo/gw;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
