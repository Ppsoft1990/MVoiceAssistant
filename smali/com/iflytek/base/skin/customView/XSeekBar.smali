.class public Lcom/iflytek/base/skin/customView/XSeekBar;
.super Landroid/widget/SeekBar;
.source "XSeekBar.java"

# interfaces
.implements Lcom/iflytek/base/skin/IRecyleResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XSeekBar"


# instance fields
.field mThumb:Landroid/graphics/drawable/Drawable;

.field private mViewDrawer:Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    const-string/jumbo v1, "main"

    invoke-direct {p0, v0, v1}, Lcom/iflytek/base/skin/customView/XSeekBar;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-string/jumbo v0, "main"

    invoke-direct {p0, p2, v0}, Lcom/iflytek/base/skin/customView/XSeekBar;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/iflytek/base/skin/customView/XSeekBar;->init(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private init(Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;-><init>(Lcom/iflytek/base/skin/customView/XSeekBar;Landroid/widget/SeekBar;Landroid/util/AttributeSet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/base/skin/customView/XSeekBar;->mViewDrawer:Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;

    .line 52
    return-void
.end method


# virtual methods
.method public getSeekBarThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XSeekBar;->mViewDrawer:Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;

    invoke-virtual {v0, p0, p1}, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->draw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 58
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recyleResource()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XSeekBar;->mViewDrawer:Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/iflytek/base/skin/customView/XSeekBar;->mViewDrawer:Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XSeekBar$SeekBarDrawer;->getCustomBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    :cond_0
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iput-object p1, p0, Lcom/iflytek/base/skin/customView/XSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 197
    return-void
.end method
