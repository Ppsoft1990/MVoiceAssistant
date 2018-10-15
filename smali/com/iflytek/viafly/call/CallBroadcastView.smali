.class public Lcom/iflytek/viafly/call/CallBroadcastView;
.super Landroid/widget/LinearLayout;
.source "CallBroadcastView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/call/CallBroadcastView$a;
    }
.end annotation


# static fields
.field private static c:I

.field private static f:Z


# instance fields
.field private a:J

.field private b:Landroid/content/Context;

.field private d:Landroid/view/WindowManager;

.field private e:Landroid/view/WindowManager$LayoutParams;

.field private g:Z

.field private h:Lcom/iflytek/viafly/call/CallBroadcastView$a;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:Landroid/view/View;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/viafly/call/CallBroadcastView;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOutgoingCall"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->a:J

    .line 64
    iput-boolean v4, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->g:Z

    .line 79
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->b:Landroid/content/Context;

    .line 80
    iput-boolean p2, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->n:Z

    .line 81
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->d:Landroid/view/WindowManager;

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030048

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    invoke-static {}, Lcom/iflytek/viafly/settings/ui/CallSmsSettingStateHelper;->isCallBroadcastOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sput-boolean v4, Lcom/iflytek/viafly/call/CallBroadcastView;->f:Z

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->b:Landroid/content/Context;

    invoke-static {v1}, Lzu;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/call/CallBroadcastView;->setEnableSpeech(Z)V

    .line 116
    :goto_1
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBroadcastView;->e()V

    .line 118
    const v1, 0x7f0b0295

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->m:Landroid/view/View;

    .line 120
    new-instance v1, Lcom/iflytek/viafly/call/CallBroadcastView$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/call/CallBroadcastView$1;-><init>(Lcom/iflytek/viafly/call/CallBroadcastView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v1, Lcom/iflytek/viafly/call/CallBroadcastView$2;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/call/CallBroadcastView$2;-><init>(Lcom/iflytek/viafly/call/CallBroadcastView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    return-void

    .line 97
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    sput-boolean v5, Lcom/iflytek/viafly/call/CallBroadcastView;->f:Z

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/call/CallBroadcastView;->setEnableSpeech(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/CallBroadcastView;)J
    .locals 2
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBroadcastView;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/call/CallBroadcastView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBroadcastView;
    .param p1, "x1"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->a:J

    return-wide p1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 537
    sget-boolean v0, Lcom/iflytek/viafly/call/CallBroadcastView;->f:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 36
    sput-boolean p0, Lcom/iflytek/viafly/call/CallBroadcastView;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/iflytek/viafly/call/CallBroadcastView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/call/CallBroadcastView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBroadcastView;->e()V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/iflytek/viafly/call/CallBroadcastView;->f:Z

    return v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 328
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->b:Landroid/content/Context;

    .line 329
    invoke-static {v2}, Lzv;->c(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 332
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->l:F

    iget v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->j:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 333
    iget v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->k:F

    iget v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->i:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 334
    invoke-virtual {p0}, Lcom/iflytek/viafly/call/CallBroadcastView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->d:Landroid/view/WindowManager;

    invoke-interface {v2, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "CallBroadcastView"

    const-string/jumbo v3, "updateposition crash!"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()V
    .locals 6

    .prologue
    .line 353
    const v3, 0x7f0b0298

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 354
    .local v1, "lebalTextView":Landroid/widget/TextView;
    const v3, 0x7f0b0297

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 355
    .local v0, "iconIconView":Landroid/widget/ImageView;
    const v3, 0x7f0b0296

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 356
    .local v2, "viewButtonLayout":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    sget-boolean v3, Lcom/iflytek/viafly/call/CallBroadcastView;->f:Z

    if-nez v3, :cond_2

    .line 361
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->b:Landroid/content/Context;

    const v4, 0x7f0c004f

    .line 362
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.call_broadcast_dialog_icon_off"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 364
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 363
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.call_broadcast_dialog_btn_bg_off"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 367
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 366
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->b:Landroid/content/Context;

    const v4, 0x7f0c0050

    .line 371
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.call_broadcast_dialog_icon_on"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 373
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 372
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.call_broadcast_dialog_btn_bg_on"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 376
    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 375
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private getStatusBarHeight()I
    .locals 6

    .prologue
    .line 385
    sget v5, Lcom/iflytek/viafly/call/CallBroadcastView;->c:I

    if-nez v5, :cond_0

    .line 387
    :try_start_0
    const-string/jumbo v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 388
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 389
    .local v3, "o":Ljava/lang/Object;
    const-string/jumbo v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 390
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 391
    .local v4, "x":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/call/CallBroadcastView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/iflytek/viafly/call/CallBroadcastView;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "x":I
    :cond_0
    :goto_0
    sget v5, Lcom/iflytek/viafly/call/CallBroadcastView;->c:I

    return v5

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/call/CallBroadcastView$a;)Z
    .locals 13
    .param p1, "pAdapter"    # Lcom/iflytek/viafly/call/CallBroadcastView$a;

    .prologue
    const/16 v12, 0x8

    const/4 v8, 0x0

    .line 212
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->h:Lcom/iflytek/viafly/call/CallBroadcastView$a;

    .line 213
    const v9, 0x7f0b0291

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 214
    .local v7, "tvTitle":Landroid/widget/TextView;
    const v9, 0x7f0b0293

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 215
    .local v5, "tvContent":Landroid/widget/TextView;
    const v9, 0x7f0b0290

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 216
    .local v4, "locationView":Landroid/widget/TextView;
    const v9, 0x7f0b0294

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 219
    .local v6, "tvSogouProvided":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->h:Lcom/iflytek/viafly/call/CallBroadcastView$a;

    if-eqz v9, :cond_5

    .line 220
    iget-object v9, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->h:Lcom/iflytek/viafly/call/CallBroadcastView$a;

    invoke-virtual {v9}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->c()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "callTitle":Ljava/lang/String;
    iget-object v9, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->h:Lcom/iflytek/viafly/call/CallBroadcastView$a;

    invoke-virtual {v9}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "callContent":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 226
    const-string/jumbo v9, ""

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .end local v0    # "callContent":Ljava/lang/String;
    .end local v1    # "callTitle":Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 229
    .restart local v0    # "callContent":Ljava/lang/String;
    .restart local v1    # "callTitle":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 233
    const-string/jumbo v9, ""

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :goto_1
    const v9, 0x7f0b0292

    invoke-virtual {p0, v9}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 241
    .local v2, "iv_customer_ic":Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->b:Landroid/content/Context;

    const v10, 0x7f0c0051

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->h:Lcom/iflytek/viafly/call/CallBroadcastView$a;

    .line 242
    invoke-virtual {v10}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->b()Ljava/lang/String;

    move-result-object v10

    .line 241
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 243
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v9

    const-string/jumbo v10, "image.ic_shunfeng"

    sget-object v11, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    .line 244
    invoke-virtual {v9, v10, v11}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 243
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v9

    const-string/jumbo v10, "SC01015"

    const-string/jumbo v11, "express"

    invoke-virtual {v9, v10, v11}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_2
    iget-object v9, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->h:Lcom/iflytek/viafly/call/CallBroadcastView$a;

    invoke-virtual {v9}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 252
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :goto_3
    iget-object v9, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->h:Lcom/iflytek/viafly/call/CallBroadcastView$a;

    invoke-static {v9}, Lcom/iflytek/viafly/call/CallBroadcastView$a;->a(Lcom/iflytek/viafly/call/CallBroadcastView$a;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "location":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 259
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Labu;->a(Landroid/content/Context;)Labu;

    move-result-object v8

    const-string/jumbo v9, "SC01015"

    const-string/jumbo v10, "pop_appear"

    invoke-virtual {v8, v9, v10}, Labu;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 236
    .end local v2    # "iv_customer_ic":Landroid/widget/ImageView;
    .end local v3    # "location":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 248
    .restart local v2    # "iv_customer_ic":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 254
    :cond_4
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 264
    .end local v0    # "callContent":Ljava/lang/String;
    .end local v1    # "callTitle":Ljava/lang/String;
    .end local v2    # "iv_customer_ic":Landroid/widget/ImageView;
    :cond_5
    const-string/jumbo v9, ""

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const-string/jumbo v9, ""

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 542
    return-void
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->k:F

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->l:F

    .line 296
    iget-object v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->b:Landroid/content/Context;

    .line 297
    invoke-static {v3}, Lzv;->c(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 298
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 320
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 301
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->i:F

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->j:F

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBroadcastView;->d()V

    goto :goto_0

    .line 308
    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/viafly/call/CallBroadcastView;->d()V

    .line 309
    const/4 v3, 0x0

    iput v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->j:F

    iput v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->i:F

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "posData":Ljava/lang/String;
    const/4 v0, 0x0

    .line 312
    .local v0, "key":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->n:Z

    if-eqz v3, :cond_0

    .line 313
    const-string/jumbo v0, "com.iflytek.cmcc.IFLY_OUT_GOING_CALL_WINDOW_POSITION"

    .line 317
    :goto_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    const-string/jumbo v0, "com.iflytek.cmcc.IFLY_INCOMIMG_CALL_WINDOW_POSITION"

    goto :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnableSpeech(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->g:Z

    .line 276
    const v1, 0x7f0b0295

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/call/CallBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, "view":Landroid/view/View;
    iget-boolean v1, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->g:Z

    if-eqz v1, :cond_0

    .line 282
    :cond_0
    return-void
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/iflytek/viafly/call/CallBroadcastView;->e:Landroid/view/WindowManager$LayoutParams;

    .line 289
    return-void
.end method
