.class public final Lo/gc;
.super Landroid/app/Dialog;
.source "CommonReminderDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/gc;->e:Z

    iput-object p1, p0, Lo/gc;->f:Landroid/content/Context;

    iput-object p2, p0, Lo/gc;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/gc;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/gc;->e:Z

    iput-object p1, p0, Lo/gc;->f:Landroid/content/Context;

    iput-object p2, p0, Lo/gc;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lo/gc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/gc;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lo/gc;)Z
    .locals 1

    iget-boolean v0, p0, Lo/gc;->e:Z

    return v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/gc;->requestWindowFeature(I)Z

    iget-object v0, p0, Lo/gc;->f:Landroid/content/Context;

    const-string/jumbo v1, "sso_dialog_union"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gc;->setContentView(I)V

    invoke-virtual {p0}, Lo/gc;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/gc;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v3}, Lo/gc;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/gc;->setCancelable(Z)V

    iget-object v0, p0, Lo/gc;->f:Landroid/content/Context;

    const-string/jumbo v1, "tv_secondary_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gc;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gc;->f:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_error_message"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gc;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gc;->f:Landroid/content/Context;

    const-string/jumbo v1, "tv_main_choice"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/gc;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lo/gc;->f:Landroid/content/Context;

    const-string/jumbo v1, "view_vertical_divider"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/gc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/gc;->d:Landroid/view/View;

    iget-object v0, p0, Lo/gc;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lo/gc;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lo/gc;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lo/gc;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lo/gc;->b:Landroid/widget/TextView;

    new-instance v1, Lo/gd;

    invoke-direct {v1, p0}, Lo/gd;-><init>(Lo/gc;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
