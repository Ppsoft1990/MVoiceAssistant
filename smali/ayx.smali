.class public Layx;
.super Landroid/app/Dialog;
.source "TranslateResultMenuDialog.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p1, p0, Layx;->a:Landroid/content/Context;

    .line 24
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Layx;->setCanceledOnTouchOutside(Z)V

    .line 26
    invoke-virtual {p0}, Layx;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 27
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Layx;->a:Landroid/content/Context;

    const-wide v2, 0x4071800000000000L    # 280.0

    invoke-static {v1, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 28
    invoke-virtual {p0}, Layx;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 40
    return-void
.end method
