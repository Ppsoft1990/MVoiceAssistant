.class public Lcom/iflytek/viafly/guide/UserGuideView;
.super Lcom/iflytek/base/skin/customView/XRelativeLayout;
.source "UserGuideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/guide/UserGuideView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/iflytek/viafly/guide/ProtocolView;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

.field private i:Landroid/support/v4/view/ViewPager$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/guide/UserGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v0, p0, Lcom/iflytek/viafly/guide/UserGuideView;->a:I

    .line 47
    iput-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->c:Ljava/util/List;

    .line 49
    iput v0, p0, Lcom/iflytek/viafly/guide/UserGuideView;->d:I

    .line 51
    iput-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    .line 236
    new-instance v0, Lcom/iflytek/viafly/guide/UserGuideView$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/guide/UserGuideView$3;-><init>(Lcom/iflytek/viafly/guide/UserGuideView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView;->i:Landroid/support/v4/view/ViewPager$f;

    .line 65
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/UserGuideView;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/guide/UserGuideView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/guide/UserGuideView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->a:I

    return p1
.end method

.method static synthetic a(Lcom/iflytek/viafly/guide/UserGuideView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/guide/UserGuideView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x3

    .line 69
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v2, "fillParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/guide/UserGuideView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const/high16 v6, -0x1000000

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/guide/UserGuideView;->setBackgroundColor(I)V

    .line 74
    new-instance v6, Lcom/iflytek/viafly/guide/UserGuideView$1;

    invoke-direct {v6, p0}, Lcom/iflytek/viafly/guide/UserGuideView$1;-><init>(Lcom/iflytek/viafly/guide/UserGuideView;)V

    iput-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->g:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v6, Landroid/support/v4/view/ViewPager;

    invoke-direct {v6, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    .line 85
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v2}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->c:Ljava/util/List;

    .line 91
    const/4 v6, 0x5

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "image.viafly_main_guide_one"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "image.viafly_main_guide_two"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "image.viafly_main_guide_three"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "image.viafly_main_guide_four"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "image.viafly_main_guide_five"

    aput-object v7, v0, v6

    .line 95
    .local v0, "bgUrl":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 96
    new-instance v5, Lcom/iflytek/viafly/guide/CommonSlideView;

    invoke-direct {v5, p1}, Lcom/iflytek/viafly/guide/CommonSlideView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v5, "slideView":Lcom/iflytek/viafly/guide/CommonSlideView;
    invoke-virtual {v5, v2}, Lcom/iflytek/viafly/guide/CommonSlideView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    aget-object v6, v0, v3

    iget-object v7, p0, Lcom/iflytek/viafly/guide/UserGuideView;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6, v7}, Lcom/iflytek/viafly/guide/CommonSlideView;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v5    # "slideView":Lcom/iflytek/viafly/guide/CommonSlideView;
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 103
    .local v4, "lastSlide":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/iflytek/viafly/guide/UserGuideView$a;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/iflytek/viafly/guide/UserGuideView$a;-><init>(Lcom/iflytek/viafly/guide/UserGuideView;Lcom/iflytek/viafly/guide/UserGuideView$1;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Lba;)V

    .line 107
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/iflytek/viafly/guide/UserGuideView;->i:Landroid/support/v4/view/ViewPager$f;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$f;)V

    .line 109
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/guide/UserGuideView;->addView(Landroid/view/View;)V

    .line 111
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v7, v0, v7

    sget-object v8, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/guide/UserGuideView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/iflytek/viafly/guide/UserGuideView;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "bgUrl":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "lastSlide":Landroid/widget/LinearLayout;
    :goto_1
    new-instance v6, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    invoke-direct {v6, p1}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->h:Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    .line 120
    iget-object v6, p0, Lcom/iflytek/viafly/guide/UserGuideView;->h:Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    invoke-virtual {v6, v2}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v6, "UserGuideView"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic b(Lcom/iflytek/viafly/guide/UserGuideView;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/guide/UserGuideView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/iflytek/viafly/guide/UserGuideView;->c()V

    return-void
.end method

.method static synthetic c(Lcom/iflytek/viafly/guide/UserGuideView;)Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/guide/UserGuideView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView;->h:Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 124
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    if-nez v1, :cond_2

    .line 126
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-virtual {v1}, Lhl;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v0, Lbbm;

    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbbm;-><init>(Landroid/content/Context;Lbbb;)V

    .line 128
    .local v0, "voiceRoleDataManager":Lbbm;
    invoke-virtual {v0}, Lbbm;->b()V

    .line 130
    .end local v0    # "voiceRoleDataManager":Lbbm;
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 133
    :cond_1
    new-instance v1, Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/guide/UserGuideView;->d:I

    invoke-direct {v1, v2, v3}, Lcom/iflytek/viafly/guide/ProtocolView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    .line 134
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    new-instance v2, Lcom/iflytek/viafly/guide/UserGuideView$2;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/guide/UserGuideView$2;-><init>(Lcom/iflytek/viafly/guide/UserGuideView;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/guide/ProtocolView;->setCustomListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/guide/ProtocolView;->setEnterListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/guide/UserGuideView;->addView(Landroid/view/View;)V

    .line 145
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/guide/ProtocolView;->b()V

    .line 147
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/guide/UserGuideView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/guide/UserGuideView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x4

    iget v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/guide/ProtocolView;->a()V

    .line 182
    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 161
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v0, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "user_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/guide/UserGuideView;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v1, "user_position"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iflytek/viafly/guide/UserGuideView;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v1, "userguide_key_operate"

    const-string/jumbo v2, "back"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lxg;->a(Landroid/content/Context;)Lxg;

    move-result-object v1

    const-string/jumbo v2, "FD36014"

    invoke-virtual {v1, v2, v0}, Lxg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->h:Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->h:Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    invoke-virtual {v1}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->b()Z

    move-result v1

    .line 175
    .end local v0    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v1

    .line 172
    :cond_0
    const/16 v1, 0x52

    if-ne v1, p1, :cond_1

    .line 173
    const/4 v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 275
    const-string/jumbo v2, "UserGuideView"

    const-string/jumbo v3, "dismiss()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideView;->recyleResource()V

    .line 278
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/UserGuideView;->removeAllViews()V

    .line 280
    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 282
    iput-object v4, p0, Lcom/iflytek/viafly/guide/UserGuideView;->b:Landroid/support/v4/view/ViewPager;

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideView;->c:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideView;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideView;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/iflytek/viafly/guide/CommonSlideView;

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideView;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/guide/CommonSlideView;

    .line 289
    .local v1, "slideView":Lcom/iflytek/viafly/guide/CommonSlideView;
    invoke-virtual {v1}, Lcom/iflytek/viafly/guide/CommonSlideView;->a()V

    .line 286
    .end local v1    # "slideView":Lcom/iflytek/viafly/guide/CommonSlideView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    if-eqz v2, :cond_3

    .line 294
    iget-object v2, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/guide/ProtocolView;->c()V

    .line 295
    iput-object v4, p0, Lcom/iflytek/viafly/guide/UserGuideView;->e:Lcom/iflytek/viafly/guide/ProtocolView;

    .line 298
    :cond_3
    iput-object v4, p0, Lcom/iflytek/viafly/guide/UserGuideView;->c:Ljava/util/List;

    .line 300
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public setEnterListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->f:Landroid/view/View$OnClickListener;

    .line 269
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView;->h:Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideView;->h:Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;

    iget-object v1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/guide/UserGuideCustomViewContainer;->setEnterListener(Landroid/view/View$OnClickListener;)V

    .line 272
    :cond_0
    return-void
.end method

.method public setUserGuideType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/iflytek/viafly/guide/UserGuideView;->d:I

    .line 157
    return-void
.end method
