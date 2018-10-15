.class public abstract Laov;
.super Landroid/app/Dialog;
.source "BaseMmsContentSpeechDialog.java"

# interfaces
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laov$a;
    }
.end annotation


# static fields
.field private static m:[Landroid/graphics/drawable/BitmapDrawable;

.field private static n:[Landroid/graphics/drawable/BitmapDrawable;

.field private static o:[Landroid/graphics/drawable/BitmapDrawable;

.field private static q:Z

.field private static r:Z

.field private static s:Ljava/lang/Runnable;

.field private static t:Ljava/lang/Thread;


# instance fields
.field protected a:Lcom/iflytek/yd/speech/ISpeechHandler;

.field protected b:Landroid/content/Context;

.field private c:Laov$a;

.field private d:Lcom/iflytek/base/skin/customView/XTextView;

.field private e:Lcom/iflytek/base/skin/customView/XImageView;

.field private f:Lcom/iflytek/base/skin/customView/XImageView;

.field private g:Lcom/iflytek/base/skin/customView/XImageView;

.field private h:Lcom/iflytek/base/skin/customView/XImageView;

.field private i:Lcom/iflytek/base/skin/customView/XButton;

.field private j:Lcom/iflytek/base/skin/customView/XButton;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;

.field private p:Landroid/graphics/drawable/AnimationDrawable;

.field private u:Landroid/media/AudioManager;

.field private v:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Laov;->m:[Landroid/graphics/drawable/BitmapDrawable;

    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    .line 86
    const/16 v0, 0x17

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Laov;->o:[Landroid/graphics/drawable/BitmapDrawable;

    .line 90
    sput-boolean v1, Laov;->q:Z

    .line 91
    sput-boolean v1, Laov;->r:Z

    .line 92
    new-instance v0, Laov$1;

    invoke-direct {v0}, Laov$1;-><init>()V

    sput-object v0, Laov;->s:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Laov;->s:Ljava/lang/Runnable;

    const-string/jumbo v2, "preLoadMicResThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Laov;->t:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laov$a;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pListener"    # Laov$a;

    .prologue
    const/4 v2, 0x1

    .line 140
    const v0, 0x7f080021

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 110
    new-instance v0, Laov$2;

    invoke-direct {v0, p0}, Laov$2;-><init>(Laov;)V

    iput-object v0, p0, Laov;->v:Landroid/content/DialogInterface$OnKeyListener;

    .line 141
    iput-object p1, p0, Laov;->b:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Laov;->c:Laov$a;

    .line 143
    iget-object v0, p0, Laov;->b:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Laov;->u:Landroid/media/AudioManager;

    .line 147
    invoke-virtual {p0, v2}, Laov;->setCanceledOnTouchOutside(Z)V

    .line 148
    iget-object v0, p0, Laov;->v:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v0}, Laov;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 150
    invoke-virtual {p0, v2}, Laov;->requestWindowFeature(I)Z

    .line 151
    invoke-virtual {p0}, Laov;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02043b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 153
    return-void
.end method

.method static synthetic a(Laov;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Laov;

    .prologue
    .line 36
    iget-object v0, p0, Laov;->u:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 157
    sget-object v0, Laov;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 160
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Laov;->s:Ljava/lang/Runnable;

    const-string/jumbo v2, "preLoadMicResThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Laov;->t:Ljava/lang/Thread;

    .line 161
    sput-boolean v3, Laov;->q:Z

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Laov;->r:Z

    .line 163
    sget-object v0, Laov;->t:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 164
    sget-object v0, Laov;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method

.method private a(Landroid/widget/ImageView;[Landroid/graphics/drawable/BitmapDrawable;ZI)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmapDrawables"    # [Landroid/graphics/drawable/BitmapDrawable;
    .param p3, "oneShot"    # Z
    .param p4, "time"    # I

    .prologue
    .line 513
    if-eqz p1, :cond_2

    .line 514
    iget-object v2, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    .line 515
    iget-object v2, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 518
    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v2, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    .line 519
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 520
    iget-object v2, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3, p4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_1
    iget-object v2, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    iget-object v2, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, p3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 525
    iget-object v2, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BaseMmsContentSpeechDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startAnimation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic a(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 36
    sput-boolean p0, Laov;->q:Z

    return p0
.end method

.method static synthetic b(Laov;)Lcom/iflytek/base/skin/customView/XButton;
    .locals 1
    .param p0, "x0"    # Laov;

    .prologue
    .line 36
    iget-object v0, p0, Laov;->i:Lcom/iflytek/base/skin/customView/XButton;

    return-object v0
.end method

.method public static b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 170
    sget-object v2, Laov;->t:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 171
    sget-object v2, Laov;->t:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 173
    :cond_0
    sput-boolean v1, Laov;->r:Z

    .line 174
    sget-object v3, Laov;->m:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v4, v3

    move v2, v1

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_1
    sget-object v3, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 180
    :cond_2
    sget-object v2, Laov;->o:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 183
    :cond_3
    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 36
    sput-boolean p0, Laov;->r:Z

    return p0
.end method

.method static synthetic c(Laov;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Laov;

    .prologue
    .line 36
    iget-object v0, p0, Laov;->k:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Laov;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Laov;

    .prologue
    .line 36
    iget-object v0, p0, Laov;->l:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static d()V
    .locals 6

    .prologue
    .line 461
    const-string/jumbo v1, "image.mic_wave_w_"

    .line 462
    .local v1, "waveImageBasePath":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 463
    sget-object v3, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 464
    invoke-virtual {v2, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v2, v3, v0

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return-void
.end method

.method public static e()V
    .locals 6

    .prologue
    .line 472
    const-string/jumbo v1, "image.mic_loading_mms_"

    .line 473
    .local v1, "loadImageBasePath":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Laov;->o:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 474
    sget-object v3, Laov;->o:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 475
    invoke-virtual {v2, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v2, v3, v0

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_0
    return-void
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Laov;->h()V

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 206
    const v0, 0x7f0b03ee

    invoke-virtual {p0, v0}, Laov;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Laov;->d:Lcom/iflytek/base/skin/customView/XTextView;

    .line 208
    const v0, 0x7f0b03ef

    invoke-virtual {p0, v0}, Laov;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Laov;->e:Lcom/iflytek/base/skin/customView/XImageView;

    .line 209
    const v0, 0x7f0b03f0

    invoke-virtual {p0, v0}, Laov;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Laov;->f:Lcom/iflytek/base/skin/customView/XImageView;

    .line 210
    const v0, 0x7f0b03f1

    invoke-virtual {p0, v0}, Laov;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Laov;->g:Lcom/iflytek/base/skin/customView/XImageView;

    .line 211
    const v0, 0x7f0b03f2

    invoke-virtual {p0, v0}, Laov;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Laov;->h:Lcom/iflytek/base/skin/customView/XImageView;

    .line 212
    const v0, 0x7f0b04ee

    invoke-virtual {p0, v0}, Laov;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Laov;->i:Lcom/iflytek/base/skin/customView/XButton;

    .line 213
    const v0, 0x7f0b04ef

    invoke-virtual {p0, v0}, Laov;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XButton;

    iput-object v0, p0, Laov;->j:Lcom/iflytek/base/skin/customView/XButton;

    .line 215
    iget-object v0, p0, Laov;->i:Lcom/iflytek/base/skin/customView/XButton;

    new-instance v1, Laov$3;

    invoke-direct {v1, p0}, Laov$3;-><init>(Laov;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Laov;->i:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Laov;->i:Lcom/iflytek/base/skin/customView/XButton;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setTextColor(I)V

    .line 229
    iget-object v0, p0, Laov;->j:Lcom/iflytek/base/skin/customView/XButton;

    new-instance v1, Laov$4;

    invoke-direct {v1, p0}, Laov$4;-><init>(Laov;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method

.method private static h()V
    .locals 6

    .prologue
    .line 450
    const-string/jumbo v1, "image.mic_initial_mms_"

    .line 451
    .local v1, "initImageBasePath":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Laov;->m:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 452
    sget-object v3, Laov;->m:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 453
    invoke-virtual {v2, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v2, v3, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 418
    const-string/jumbo v1, "BaseMmsContentSpeechDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUIRecodingVolume, volume is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "waveDrawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 434
    :goto_0
    return-void

    .line 424
    :cond_0
    sget-object v2, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    monitor-enter v2

    .line 425
    :try_start_0
    sget-object v1, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 426
    monitor-exit v2

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 428
    :cond_1
    :try_start_1
    sget-object v1, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v1, p1

    .line 429
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Laov;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    const-string/jumbo v1, "BaseMmsContentSpeechDialog"

    const-string/jumbo v3, "mVolumeWaveImageView.setImageDrawable"

    invoke-static {v1, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Laov;->f:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 198
    iput-object p1, p0, Laov;->k:Landroid/view/View$OnClickListener;

    .line 199
    return-void
.end method

.method public a(Lcom/iflytek/yd/speech/ISpeechHandler;)V
    .locals 1
    .param p1, "pSpeechHandler"    # Lcom/iflytek/yd/speech/ISpeechHandler;

    .prologue
    .line 248
    iput-object p1, p0, Laov;->a:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 249
    iget-object v0, p0, Laov;->a:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0, p0}, Lcom/iflytek/yd/speech/ISpeechHandler;->setCallback(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V

    .line 250
    return-void
.end method

.method protected b(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 202
    iput-object p1, p0, Laov;->l:Landroid/view/View$OnClickListener;

    .line 203
    return-void
.end method

.method protected abstract c()V
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 307
    const-string/jumbo v0, "BaseMmsContentSpeechDialog"

    const-string/jumbo v1, "cancel"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Laov;->a:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laov;->a:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Laov;->a:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 312
    :cond_0
    iget-object v0, p0, Laov;->c:Laov$a;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Laov;->c:Laov$a;

    invoke-interface {v0}, Laov$a;->d()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Laov;->c:Laov$a;

    .line 316
    :cond_1
    invoke-virtual {p0}, Laov;->c()V

    .line 317
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 318
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 292
    const-string/jumbo v0, "BaseMmsContentSpeechDialog"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Laov;->a:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laov;->a:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Laov;->a:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 297
    :cond_0
    iget-object v0, p0, Laov;->c:Laov$a;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Laov;->c:Laov$a;

    invoke-interface {v0}, Laov$a;->d()V

    .line 300
    :cond_1
    invoke-virtual {p0}, Laov;->c()V

    .line 301
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 302
    return-void
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 1
    .param p1, "results"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 374
    iget-object v0, p0, Laov;->c:Laov$a;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Laov;->c:Laov$a;

    invoke-interface {v0}, Laov$a;->d()V

    .line 377
    :cond_0
    return-void
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "results"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 369
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 189
    const v0, 0x7f0300c6

    invoke-virtual {p0, v0}, Laov;->setContentView(I)V

    .line 190
    invoke-direct {p0}, Laov;->g()V

    .line 191
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 267
    const-string/jumbo v0, "BaseMmsContentSpeechDialog"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 272
    iget-object v0, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 273
    iput-object v2, p0, Laov;->p:Landroid/graphics/drawable/AnimationDrawable;

    .line 276
    :cond_0
    iget-object v0, p0, Laov;->f:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v0, p0, Laov;->e:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v0, p0, Laov;->g:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v0, p0, Laov;->f:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Laov;->e:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Laov;->g:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 287
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 288
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 262
    return-void
.end method

.method public updateUIAfterResult()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 0
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    .line 385
    return-void
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 1
    .param p1, "speechIntent"    # Landroid/content/Intent;

    .prologue
    .line 322
    iget-object v0, p0, Laov;->c:Laov$a;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Laov;->c:Laov$a;

    invoke-interface {v0}, Laov$a;->b()V

    .line 325
    :cond_0
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 334
    iget-object v0, p0, Laov;->e:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Laov;->f:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Laov;->g:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Laov;->h:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Laov;->d:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "\u6b63\u5728\u503e\u542c..."

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Laov;->i:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Laov;->i:Lcom/iflytek/base/skin/customView/XButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setTextColor(I)V

    .line 343
    iget-object v0, p0, Laov;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_STOP_WEATHER_SPEEK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    sget-object v0, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v0, v0

    if-lez v0, :cond_0

    sget-object v0, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laov;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const-string/jumbo v0, "BaseMmsContentSpeechDialog"

    const-string/jumbo v1, "mVolumeWaveImageView.setImageDrawable"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Laov;->f:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v1, Laov;->n:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    :cond_0
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Laov;->a(I)V

    .line 330
    return-void
.end method

.method public updateUIInSNState()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 389
    :cond_0
    sget-boolean v0, Laov;->r:Z

    if-nez v0, :cond_1

    sget-boolean v0, Laov;->q:Z

    if-nez v0, :cond_0

    .line 391
    :cond_1
    sget-boolean v0, Laov;->r:Z

    if-nez v0, :cond_2

    .line 392
    invoke-static {}, Laov;->h()V

    .line 393
    invoke-static {}, Laov;->d()V

    .line 394
    invoke-static {}, Laov;->e()V

    .line 397
    :cond_2
    iget-object v0, p0, Laov;->d:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "\u8bf7\u8bf4\u8bdd"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Laov;->e:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Laov;->f:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Laov;->g:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Laov;->h:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Laov;->e:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v1, Laov;->m:[Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    const/16 v3, 0x50

    invoke-direct {p0, v0, v1, v2, v3}, Laov;->a(Landroid/widget/ImageView;[Landroid/graphics/drawable/BitmapDrawable;ZI)V

    .line 405
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 354
    iget-object v0, p0, Laov;->d:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "\u6b63\u5728\u8bc6\u522b..."

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Laov;->i:Lcom/iflytek/base/skin/customView/XButton;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XButton;->setEnabled(Z)V

    .line 356
    iget-object v0, p0, Laov;->i:Lcom/iflytek/base/skin/customView/XButton;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setTextColor(I)V

    .line 358
    iget-object v0, p0, Laov;->f:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Laov;->f:Lcom/iflytek/base/skin/customView/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v0, p0, Laov;->f:Lcom/iflytek/base/skin/customView/XImageView;

    sget-object v1, Laov;->o:[Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x50

    invoke-direct {p0, v0, v1, v3, v2}, Laov;->a(Landroid/widget/ImageView;[Landroid/graphics/drawable/BitmapDrawable;ZI)V

    .line 362
    iget-object v0, p0, Laov;->c:Laov$a;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Laov;->c:Laov$a;

    invoke-interface {v0}, Laov$a;->c()V

    .line 365
    :cond_0
    return-void
.end method
