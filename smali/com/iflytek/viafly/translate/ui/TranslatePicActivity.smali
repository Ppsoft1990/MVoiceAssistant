.class public Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;
.super Landroid/app/Activity;
.source "TranslatePicActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lays;


# instance fields
.field private A:Layv;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

.field private E:Lcom/iflytek/viafly/ui/view/ScanImageView;

.field private F:Z

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Landroid/os/Handler$Callback;

.field private J:Z

.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/SurfaceView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/SurfaceHolder;

.field private j:Landroid/hardware/Camera;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    .line 79
    iput v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    .line 80
    iput v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->s:I

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->t:I

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->u:I

    .line 83
    const/4 v0, 0x4

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->v:I

    .line 85
    iput v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->w:I

    .line 86
    iput v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->x:I

    .line 87
    iput v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->y:I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iflytek/yd/util/SDCardHelper;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/ViaFly/Translate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/IMG_PIC_TRANSLATE.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->B:Ljava/lang/String;

    .line 93
    iput-boolean v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->C:Z

    .line 162
    new-instance v0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$6;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$6;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->I:Landroid/os/Handler$Callback;

    .line 432
    iput-boolean v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->J:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->w:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->G:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b:Landroid/view/SurfaceView;

    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$1;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    const v0, 0x7f0b0736

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f0b073b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0b073e

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v0, 0x7f0b0741

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f0b0742

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    return-void
.end method

.method private a(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    .line 550
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 551
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-static {p0, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    .line 553
    .local v7, "width":I
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h:Landroid/widget/ImageView;

    int-to-float v4, v7

    div-float/2addr v4, v6

    sub-float v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 554
    iget-object v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h:Landroid/widget/ImageView;

    int-to-float v4, v7

    div-float/2addr v4, v6

    sub-float v4, p2, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 555
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 556
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 557
    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$10;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$10;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 573
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 574
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, -0x1

    .line 682
    const-string/jumbo v0, "CameraUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aCameraUtil"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d()V

    .line 685
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 686
    if-nez p1, :cond_0

    .line 757
    :goto_0
    return-void

    .line 689
    :cond_0
    const-string/jumbo v0, "CameraUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bCameraUtil"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 692
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->d()V

    .line 696
    :cond_1
    const-string/jumbo v0, "CameraUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cCameraUtil"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v0, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    .line 698
    const-string/jumbo v0, "CameraUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dCameraUtil"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$5;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setGraffitiStateListener(Lcom/iflytek/viafly/translate/ui/GraffitiChooseView$a;)V

    .line 754
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 755
    const-string/jumbo v0, "CameraUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eCameraUtil"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(FF)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->F:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b:Landroid/view/SurfaceView;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const v6, 0x7f0202fb

    const v2, 0x7f0a0039

    const v5, 0x7f0a0038

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 176
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_2

    .line 177
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f0202ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    const-string/jumbo v1, "\u672c\u5730\u56fe\u5e93"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f020304

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v1, "\u62cd\u7167\u6280\u5de7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    :cond_0
    :goto_0
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_7

    .line 231
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d:Landroid/widget/TextView;

    invoke-static {v0}, Layy;->a(Landroid/widget/TextView;)V

    .line 235
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setEditable(Z)V

    .line 266
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->c()V

    .line 267
    return-void

    .line 185
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->s:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_3

    .line 186
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f0202ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    const-string/jumbo v1, "\u672c\u5730\u56fe\u5e93"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->p:Landroid/widget/ImageView;

    const v1, 0x7f0202fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f020305

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v1, "\u62cd\u7167\u6280\u5de7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 194
    :cond_3
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->t:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_4

    .line 195
    iput-boolean v3, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->F:Z

    .line 196
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f020302

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f0202f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6e05\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 204
    :cond_4
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->u:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_5

    .line 205
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f020301

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->p:Landroid/widget/ImageView;

    const v1, 0x7f0202fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f0202f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6e05\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 213
    :cond_5
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->v:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_0

    .line 214
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->F:Z

    if-eqz v0, :cond_6

    .line 215
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f020303

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    :goto_2
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    const-string/jumbo v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->n:Landroid/widget/ImageView;

    const v1, 0x7f0202ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v1, "\u6e05\u9664"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 218
    :cond_6
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f020302

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 238
    :cond_7
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->s:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_8

    .line 239
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d:Landroid/widget/TextView;

    invoke-static {v0}, Layy;->b(Landroid/widget/TextView;)V

    .line 242
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setEditable(Z)V

    goto/16 :goto_1

    .line 245
    :cond_8
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->t:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_9

    .line 246
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d:Landroid/widget/TextView;

    invoke-static {v0}, Layy;->c(Landroid/widget/TextView;)V

    .line 249
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setEditable(Z)V

    goto/16 :goto_1

    .line 252
    :cond_9
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->u:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_a

    .line 253
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d:Landroid/widget/TextView;

    invoke-static {v0}, Layy;->d(Landroid/widget/TextView;)V

    .line 255
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setEditable(Z)V

    goto/16 :goto_1

    .line 259
    :cond_a
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->v:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setEditable(Z)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->H:Z

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 270
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    invoke-static {v0}, Laze;->c(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    invoke-static {v0}, Laze;->c(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->x:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    invoke-static {v0}, Laze;->c(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    invoke-static {v0}, Laze;->b(Landroid/hardware/Camera;)V

    .line 327
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$7;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$7;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    :cond_1
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v1, v2, :cond_0

    .line 346
    invoke-static {p0}, Laze;->a(Landroid/app/Activity;)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 350
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 351
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    new-instance v2, Laze$a;

    invoke-direct {v2}, Laze$a;-><init>()V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_1
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->k()V

    return-void
.end method

.method static synthetic f(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->y:I

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    invoke-static {v0}, Laze;->c(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    invoke-static {v0}, Laze;->b(Landroid/hardware/Camera;)V

    .line 405
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Lxq;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    invoke-static {v0}, Laze;->a(Landroid/hardware/Camera;)V

    .line 409
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0202f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Lxq;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 415
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u5f00\u542f\u7f51\u7edc\u540e\u518d\u5c1d\u8bd5"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_2

    .line 421
    new-instance v0, Lazr;

    invoke-direct {v0, p0}, Lazr;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lazr;->a()V

    .line 422
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "localPhoto"

    invoke-virtual {v0, v1}, Lxq;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_2
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->F:Z

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->c()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    return v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 434
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    const-string/jumbo v0, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u5f00\u542f\u7f51\u7edc\u540e\u518d\u5c1d\u8bd5"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_3

    .line 440
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->J:Z

    if-eqz v0, :cond_2

    .line 441
    const-string/jumbo v0, "CameraUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "you click so fast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->J:Z

    .line 445
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    new-instance v1, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$8;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$8;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    invoke-static {p0, v0, v1}, Laze;->a(Landroid/app/Activity;Landroid/hardware/Camera;Laze$c;)V

    .line 464
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "FT89531"

    invoke-virtual {v0, v1}, Lxq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_3
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->s:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v0, v1, :cond_0

    .line 467
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->u:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v0, v1, :cond_0

    .line 469
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->v:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->t:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_0

    .line 471
    :cond_4
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    .line 472
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 473
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e()V

    .line 474
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "reShoot"

    invoke-virtual {v0, v1}, Lxq;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 480
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_1

    .line 481
    const-string/jumbo v0, "http://lx.openspeech.cn/auth/project/lxCameraRule/index.html"

    invoke-static {p0, v0}, Lazo;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "navigationBar"

    invoke-virtual {v0, v1}, Lxq;->h(Ljava/lang/String;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->v:I

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v0, v1, :cond_0

    .line 484
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->G:Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b()V

    .line 486
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->t:I

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    .line 487
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 488
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "FT90210"

    invoke-virtual {v0, v1}, Lxq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 493
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->s:I

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    .line 494
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 495
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->E:Lcom/iflytek/viafly/ui/view/ScanImageView;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->E:Lcom/iflytek/viafly/ui/view/ScanImageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->startScan()V

    .line 498
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->A:Layv;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Layv;->a(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method static synthetic k(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j()V

    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 761
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->t:I

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    .line 762
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 763
    return-void
.end method

.method static synthetic l(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->H:Z

    return v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 781
    invoke-static {}, Laze;->a()V

    .line 782
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d()V

    .line 783
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->finish()V

    .line 784
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->A:Layv;

    invoke-virtual {v0}, Layv;->a()V

    .line 785
    return-void
.end method

.method static synthetic m(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l()V

    return-void
.end method

.method static synthetic n(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    return-object v0
.end method

.method static synthetic o(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->u:I

    return v0
.end method

.method static synthetic q(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)Layv;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->A:Layv;

    return-object v0
.end method

.method static synthetic r(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;

    .prologue
    .line 59
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->v:I

    return v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 8
    .param p1, "errorCode"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 591
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->E:Lcom/iflytek/viafly/ui/view/ScanImageView;

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->E:Lcom/iflytek/viafly/ui/view/ScanImageView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/ScanImageView;->stopScan()V

    .line 594
    :cond_0
    iput-boolean v6, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->J:Z

    .line 595
    const-string/jumbo v1, "CameraUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "takePicture over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-nez p1, :cond_1

    .line 598
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 599
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsNeedDismiss(ZZ)V

    .line 600
    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u67e5\u770b\u8bf4\u660e"

    new-instance v3, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$13;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$13;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    .line 601
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u91cd\u62cd"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$12;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$12;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    .line 608
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    .line 617
    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$11;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$11;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    .line 618
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    .line 627
    invoke-virtual {v1, v7, v6, v6}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 660
    :goto_0
    return-void

    .line 630
    .end local v0    # "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 631
    .restart local v0    # "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u8fd4\u56de"

    new-instance v3, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$4;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$4;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    .line 632
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u91cd\u8bd5"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$3;

    invoke-direct {v4, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$3;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    .line 641
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    .line 648
    invoke-virtual {v1, v6}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$2;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$2;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    .line 649
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    .line 658
    invoke-virtual {v1, v7, v6, v6}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/translate/entity/TranslateResultItem;)V
    .locals 3
    .param p1, "item"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .prologue
    const/4 v2, 0x0

    .line 664
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->v:I

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    .line 665
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 666
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->D:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 667
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iput-boolean v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->H:Z

    .line 669
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 673
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->b()V

    .line 674
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->t:I

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    .line 675
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 676
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->G:Ljava/lang/String;

    .line 677
    iput-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->H:Z

    .line 678
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 679
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Laxs;>;"
    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->E:Lcom/iflytek/viafly/ui/view/ScanImageView;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->E:Lcom/iflytek/viafly/ui/view/ScanImageView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/ScanImageView;->stopScan()V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g:Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/translate/ui/GraffitiChooseView;->setRecognizeResult(Ljava/util/List;)V

    .line 583
    iget v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->t:I

    iput v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    .line 584
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 585
    iput-boolean v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->J:Z

    .line 586
    const-string/jumbo v0, "CameraUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "takePicture over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 511
    const-string/jumbo v2, "TranslatePicActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-ne p2, v6, :cond_3

    const/16 v2, 0x7d4

    if-ne p1, v2, :cond_3

    .line 513
    if-eqz p3, :cond_0

    .line 514
    new-instance v0, Lcom/iflytek/viafly/im/ImageUtils;

    invoke-direct {v0}, Lcom/iflytek/viafly/im/ImageUtils;-><init>()V

    .line 515
    .local v0, "imageUtils":Lcom/iflytek/viafly/im/ImageUtils;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/im/ImageUtils;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "picUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 517
    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/im/ImageUtils;->isPicSupport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    new-instance v2, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$9;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity$9;-><init>(Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;)V

    invoke-static {v1, v2}, Laze;->a(Ljava/lang/String;Laze$c;)V

    .line 547
    .end local v0    # "imageUtils":Lcom/iflytek/viafly/im/ImageUtils;
    .end local v1    # "picUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 535
    .restart local v0    # "imageUtils":Lcom/iflytek/viafly/im/ImageUtils;
    .restart local v1    # "picUrl":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "\u4e0d\u652f\u6301\u7684\u683c\u5f0f"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 538
    :cond_2
    const-string/jumbo v2, "\u9009\u62e9\u56fe\u7247\u5931\u8d25"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 541
    .end local v0    # "imageUtils":Lcom/iflytek/viafly/im/ImageUtils;
    .end local v1    # "picUrl":Ljava/lang/String;
    :cond_3
    if-ne p2, v6, :cond_0

    const/16 v2, 0x2711

    if-ne p1, v2, :cond_0

    .line 543
    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->r:I

    iput v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    .line 544
    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 775
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 776
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "topLeftExitBtn"

    invoke-virtual {v0, v1}, Lxq;->e(Ljava/lang/String;)V

    .line 777
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->m()V

    .line 778
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 363
    :pswitch_1
    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->u:I

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->s:I

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v1, v2, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->f()V

    goto :goto_0

    .line 368
    :pswitch_2
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "topLeftExitBtn"

    invoke-virtual {v1, v2}, Lxq;->e(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->m()V

    goto :goto_0

    .line 372
    :pswitch_3
    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->u:I

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->s:I

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v1, v2, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->g()V

    goto :goto_0

    .line 377
    :pswitch_4
    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->u:I

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->s:I

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v1, v2, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h()V

    goto :goto_0

    .line 382
    :pswitch_5
    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->u:I

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->s:I

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-eq v1, v2, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i()V

    goto :goto_0

    .line 387
    :pswitch_6
    iget v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->v:I

    iget v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->q:I

    if-ne v1, v2, :cond_0

    .line 388
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/translate/ui/TranslatePicEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "TRANSLATE_RESULT"

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->D:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 390
    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 391
    invoke-static {p0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v1

    const-string/jumbo v2, "FT90211"

    invoke-virtual {v1, v2}, Lxq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0736
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->requestWindowFeature(I)Z

    .line 109
    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->setRequestedOrientation(I)V

    .line 111
    const v0, 0x7f030145

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->setContentView(I)V

    .line 112
    const v0, 0x7f0b073b

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0b0730

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b:Landroid/view/SurfaceView;

    .line 114
    const v0, 0x7f0b0731

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->c:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f0b0734

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0b073c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e:Landroid/widget/LinearLayout;

    .line 117
    const v0, 0x7f0b073d

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->f:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0b0735

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0b0732

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/ui/view/ScanImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->E:Lcom/iflytek/viafly/ui/view/ScanImageView;

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    const v0, 0x7f0b073f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->k:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0b0740

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->l:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0b0742

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->m:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f0b0743

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->n:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f0b0744

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->o:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0b0741

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->p:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i:Landroid/view/SurfaceHolder;

    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 132
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 134
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->I:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->z:Landroid/os/Handler;

    .line 135
    new-instance v0, Layv;

    invoke-direct {v0, p0, p0}, Layv;-><init>(Landroid/content/Context;Lays;)V

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->A:Layv;

    .line 136
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a()V

    .line 137
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 767
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 768
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->A:Layv;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->A:Layv;

    invoke-virtual {v0}, Layv;->b()V

    .line 771
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 288
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d()V

    .line 289
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 294
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e()V

    .line 295
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 299
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i:Landroid/view/SurfaceHolder;

    .line 300
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i:Landroid/view/SurfaceHolder;

    .line 305
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->e()V

    .line 306
    iget-boolean v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->C:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 307
    invoke-static {p0}, Lhl;->d(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 308
    .local v0, "x":I
    invoke-static {p0}, Lhl;->e(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 309
    .local v1, "y":I
    int-to-float v2, v0

    int-to-float v3, v1

    iget-object v4, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->j:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->b:Landroid/view/SurfaceView;

    invoke-static {v2, v3, v4, v5}, Laze;->a(FFLandroid/hardware/Camera;Landroid/view/SurfaceView;)V

    .line 311
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-direct {p0, v2, v3}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->a(FF)V

    .line 312
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->C:Z

    .line 314
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->i:Landroid/view/SurfaceHolder;

    .line 319
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/ui/TranslatePicActivity;->d()V

    .line 320
    return-void
.end method
