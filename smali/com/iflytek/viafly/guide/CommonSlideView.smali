.class public Lcom/iflytek/viafly/guide/CommonSlideView;
.super Lcom/iflytek/base/skin/customView/XRelativeLayout;
.source "CommonSlideView.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/guide/CommonSlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/guide/CommonSlideView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/guide/CommonSlideView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/iflytek/viafly/guide/CommonSlideView;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/guide/CommonSlideView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p0}, Lcom/iflytek/viafly/guide/CommonSlideView;->removeAllViews()V

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "slideBgUrl"    # Ljava/lang/String;
    .param p2, "skipListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 52
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/guide/CommonSlideView;->a:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object v0, p0, Lcom/iflytek/viafly/guide/CommonSlideView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/guide/CommonSlideView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method
