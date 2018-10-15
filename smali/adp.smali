.class public Ladp;
.super Landroid/widget/PopupWindow;
.source "DialSpeechTipsView.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Ladp;->setWidth(I)V

    .line 33
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Ladp;->setHeight(I)V

    .line 35
    invoke-virtual {p0, p1}, Ladp;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030084

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "mRoot":Landroid/view/View;
    const v1, 0x7f0b03a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ladp;->a:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02043b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Ladp;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0, v0}, Ladp;->setContentView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Ladp;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;I)V
    .locals 3
    .param p1, "tips"    # Ljava/lang/String;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "y"    # I

    .prologue
    .line 90
    invoke-virtual {p0}, Ladp;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Ladp;->dismiss()V

    .line 93
    :cond_0
    iget-object v1, p0, Ladp;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/16 v1, 0x51

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v1, v2, p3}, Ladp;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SpeechTipsView"

    const-string/jumbo v2, "showTips()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 105
    const-string/jumbo v0, "SpeechTipsView"

    const-string/jumbo v1, "DialSpeechTipsView dismiss!"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Labb;->a(J)V

    .line 107
    invoke-static {}, Labb;->i()I

    move-result v0

    if-nez v0, :cond_1

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Labb;->a(I)V

    .line 112
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 113
    return-void

    .line 109
    :cond_1
    invoke-static {}, Labb;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 110
    const/4 v0, 0x3

    invoke-static {v0}, Labb;->a(I)V

    goto :goto_0
.end method
