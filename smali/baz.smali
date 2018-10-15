.class public Lbaz;
.super Landroid/app/Dialog;
.source "VoiceNoteTtsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lju;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Lbas;

.field private h:Landroid/graphics/drawable/AnimationDrawable;

.field private i:Lbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 34
    const v1, 0x7f080021

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    const-string/jumbo v1, "VoiceNoteTtsDialog"

    iput-object v1, p0, Lbaz;->b:Ljava/lang/String;

    .line 48
    new-instance v1, Lbaz$1;

    invoke-direct {v1, p0}, Lbaz$1;-><init>(Lbaz;)V

    iput-object v1, p0, Lbaz;->i:Lbar;

    .line 145
    new-instance v1, Lbaz$3;

    invoke-direct {v1, p0}, Lbaz$3;-><init>(Lbaz;)V

    iput-object v1, p0, Lbaz;->a:Lju;

    .line 35
    iput-object p1, p0, Lbaz;->e:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lbaz;->f:Ljava/lang/String;

    .line 37
    new-instance v1, Lbas;

    iget-object v2, p0, Lbaz;->e:Landroid/content/Context;

    iget-object v3, p0, Lbaz;->i:Lbar;

    invoke-direct {v1, v2, v3}, Lbas;-><init>(Landroid/content/Context;Lbar;)V

    iput-object v1, p0, Lbaz;->g:Lbas;

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lbaz;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 42
    invoke-virtual {p0}, Lbaz;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 43
    iget-object v1, p0, Lbaz;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 44
    .local v0, "statusBarColor":I
    invoke-virtual {p0}, Lbaz;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 46
    .end local v0    # "statusBarColor":I
    :cond_0
    return-void
.end method

.method static synthetic a(Lbaz;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbaz;

    .prologue
    .line 22
    iget-object v0, p0, Lbaz;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lbaz;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lbaz;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lbaz;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "speakContent"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lbaz;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lbaz;->h:Landroid/graphics/drawable/AnimationDrawable;

    .line 119
    iget-object v0, p0, Lbaz;->h:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lbaz;->h:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 122
    :cond_0
    iget-object v0, p0, Lbaz;->g:Lbas;

    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbbi;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbas;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method static synthetic b(Lbaz;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lbaz;

    .prologue
    .line 22
    iget-object v0, p0, Lbaz;->h:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lbaz;->b:Ljava/lang/String;

    const-string/jumbo v1, "stopSpeak"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lbaz;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lbaz$2;

    invoke-direct {v1, p0, p1}, Lbaz$2;-><init>(Lbaz;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method static synthetic c(Lbaz;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lbaz;

    .prologue
    .line 22
    iget-object v0, p0, Lbaz;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b085a

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lbaz;->g:Lbas;

    invoke-virtual {v0}, Lbas;->a()V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lbaz;->dismiss()V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0, v5}, Lbaz;->requestWindowFeature(I)Z

    .line 86
    invoke-virtual {p0}, Lbaz;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 88
    .local v1, "win":Landroid/view/Window;
    const v2, 0x7f020437

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 89
    invoke-virtual {p0, v5}, Lbaz;->setCanceledOnTouchOutside(Z)V

    .line 91
    const v2, 0x7f03016f

    invoke-virtual {p0, v2}, Lbaz;->setContentView(I)V

    .line 94
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 95
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 96
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 97
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 98
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    const v2, 0x7f0b0859

    invoke-virtual {p0, v2}, Lbaz;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lbaz;->c:Landroid/widget/ImageView;

    .line 101
    iget-object v2, p0, Lbaz;->c:Landroid/widget/ImageView;

    const v3, 0x7f02042f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    const v2, 0x7f0b085a

    invoke-virtual {p0, v2}, Lbaz;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lbaz;->d:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lbaz;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v2, p0, Lbaz;->f:Ljava/lang/String;

    invoke-direct {p0, v2}, Lbaz;->a(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lbaz;->g:Lbas;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lbaz;->g:Lbas;

    invoke-virtual {v0}, Lbas;->a()V

    .line 193
    :cond_0
    return-void
.end method
