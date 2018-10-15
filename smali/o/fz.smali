.class public final Lo/fz;
.super Landroid/app/Dialog;
.source "ChangeAvatarDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fz$a;
    }
.end annotation


# instance fields
.field public a:Lo/fz$a;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lo/fz;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lo/fz;)Lo/fz$a;
    .locals 1

    iget-object v0, p0, Lo/fz;->a:Lo/fz$a;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lo/fz;->requestWindowFeature(I)Z

    iget-object v0, p0, Lo/fz;->d:Landroid/content/Context;

    const-string/jumbo v1, "sso_dialog_modify_avatar"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/fz;->setContentView(I)V

    invoke-virtual {p0}, Lo/fz;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lo/fz;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v3}, Lo/fz;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v3}, Lo/fz;->setCancelable(Z)V

    iget-object v0, p0, Lo/fz;->d:Landroid/content/Context;

    const-string/jumbo v1, "ll_sso_avatar_from_camera"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/fz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lo/fz;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lo/fz;->d:Landroid/content/Context;

    const-string/jumbo v1, "ll_sso_avatar_from_album"

    invoke-static {v0, v1}, Lcom/cmcc/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo/fz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lo/fz;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lo/fz;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lo/ga;

    invoke-direct {v1, p0}, Lo/ga;-><init>(Lo/fz;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lo/fz;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lo/gb;

    invoke-direct {v1, p0}, Lo/gb;-><init>(Lo/fz;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
