.class public final Lo/gs;
.super Landroid/app/Dialog;
.source "UpPwdErrDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/gs;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/gs;->f:Ljava/lang/String;

    iput-object p3, p0, Lo/gs;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lo/gs;->requestWindowFeature(I)Z

    iget-object v0, p0, Lo/gs;->a:Landroid/content/Context;

    const-string/jumbo v1, "sso_dialog_union"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gs;->setContentView(I)V

    invoke-virtual {p0}, Lo/gs;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/gs;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/gs;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/gs;->setCancelable(Z)V

    iget-object v0, p0, Lo/gs;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gs;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gs;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gs;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gs;->a:Landroid/content/Context;

    const-string/jumbo v1, "view_vertical_divider"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/gs;->d:Landroid/view/View;

    iget-object v0, p0, Lo/gs;->a:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gs;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gs;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lo/gs;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo/gs;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/gs;->e:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lo/gs;->e:Landroid/widget/TextView;

    new-instance v1, Lo/gt;

    invoke-direct {v1, p0}, Lo/gt;-><init>(Lo/gs;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lo/gs;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gs;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo/gs;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gs;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
