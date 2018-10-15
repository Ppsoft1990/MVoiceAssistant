.class public Lbav;
.super Landroid/app/Dialog;
.source "VoiceNoteDeleteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:J

.field private d:Lbap;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLbap;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deletekey"    # J
    .param p4, "callback"    # Lbap;

    .prologue
    .line 21
    const v0, 0x7f080024

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-wide p2, p0, Lbav;->c:J

    .line 23
    iput-object p4, p0, Lbav;->d:Lbap;

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0847

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lbav;->d:Lbap;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lbav;->d:Lbap;

    iget-wide v2, p0, Lbav;->c:J

    invoke-interface {v0, v2, v3}, Lbap;->a(J)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lbav;->dismiss()V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0, v4}, Lbav;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lbav;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 33
    .local v1, "win":Landroid/view/Window;
    const v2, 0x7f02043b

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 34
    invoke-virtual {p0, v4}, Lbav;->setCanceledOnTouchOutside(Z)V

    .line 36
    const v2, 0x7f03016a

    invoke-virtual {p0, v2}, Lbav;->setContentView(I)V

    .line 39
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 40
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 41
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 42
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 43
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 45
    const v2, 0x7f0b0846

    invoke-virtual {p0, v2}, Lbav;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lbav;->a:Landroid/widget/TextView;

    .line 46
    const v2, 0x7f0b0847

    invoke-virtual {p0, v2}, Lbav;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lbav;->b:Landroid/widget/TextView;

    .line 47
    iget-object v2, p0, Lbav;->a:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v2, p0, Lbav;->b:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method
