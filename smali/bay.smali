.class public Lbay;
.super Landroid/app/Dialog;
.source "VoiceNoteShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 29
    const v0, 0x7f080021

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object p1, p0, Lbay;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lbay;->b:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lbay;->dismiss()V

    .line 107
    return-void

    .line 72
    :pswitch_0
    const-string/jumbo v4, ""

    iget-object v5, p0, Lbay;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    new-instance v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-direct {v0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;-><init>()V

    .line 74
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    iget-object v4, p0, Lbay;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->text(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 75
    iget-object v4, p0, Lbay;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lazu;->a(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 80
    .end local v0    # "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v1, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "d_type"

    const-string/jumbo v5, "txtShare"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v4, "d_category"

    const-string/jumbo v5, "note"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v4, "d_operate"

    const-string/jumbo v5, "touch"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v4, p0, Lbay;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v4

    const-string/jumbo v5, "FT89406"

    .line 85
    invoke-virtual {v4, v5, v1}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 77
    .end local v1    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lbay;->a:Landroid/content/Context;

    const-string/jumbo v5, "\u6ca1\u6709\u5206\u4eab\u5185\u5bb9"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 88
    :pswitch_1
    const-string/jumbo v4, ""

    iget-object v5, p0, Lbay;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lbay;->a:Landroid/content/Context;

    const-class v5, Lcom/iflytek/viafly/voicenote/SharePicNoteView;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "shareText"

    iget-object v5, p0, Lbay;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v4, p0, Lbay;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v3, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "d_type"

    const-string/jumbo v5, "imageShare"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v4, "d_category"

    const-string/jumbo v5, "note"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v4, "d_operate"

    const-string/jumbo v5, "touch"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v4, p0, Lbay;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v4

    const-string/jumbo v5, "FT89406"

    .line 101
    invoke-virtual {v4, v5, v3}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 93
    .end local v3    # "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, Lbay;->a:Landroid/content/Context;

    const-string/jumbo v5, "\u6ca1\u6709\u5206\u4eab\u5185\u5bb9"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0857
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v6}, Lbay;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lbay;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 41
    .local v2, "win":Landroid/view/Window;
    const v3, 0x7f020437

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 42
    invoke-virtual {p0, v6}, Lbay;->setCanceledOnTouchOutside(Z)V

    .line 44
    const v3, 0x7f03016e

    invoke-virtual {p0, v3}, Lbay;->setContentView(I)V

    .line 47
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 49
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 50
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 51
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    const v3, 0x7f0b0857

    invoke-virtual {p0, v3}, Lbay;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lbay;->c:Landroid/widget/TextView;

    .line 54
    const v3, 0x7f0b0858

    invoke-virtual {p0, v3}, Lbay;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lbay;->d:Landroid/widget/TextView;

    .line 55
    iget-object v3, p0, Lbay;->c:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v3, p0, Lbay;->d:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 60
    invoke-virtual {p0}, Lbay;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 61
    invoke-virtual {p0}, Lbay;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 62
    iget-object v3, p0, Lbay;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 63
    .local v1, "statusBarColor":I
    invoke-virtual {p0}, Lbay;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 66
    .end local v1    # "statusBarColor":I
    :cond_0
    return-void
.end method
