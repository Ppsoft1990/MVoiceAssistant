.class public Lcom/iflytek/viafly/ui/view/MicrophoneView;
.super Lcom/iflytek/base/skin/customView/XImageView;
.source "MicrophoneView.java"


# instance fields
.field private final DELAY_TIME:I

.field private final MAX_COUNT:I

.field final SEND_IMAGE:I

.field private final TAG:Ljava/lang/String;

.field private mDrawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitAnimationRunnable:Ljava/lang/Runnable;

.field private mInitDrawables:[Ljava/lang/String;

.field private volatile mInited:Z

.field private volatile mLoading:Z

.field private mLoadingAnimationRunnable:Ljava/lang/Runnable;

.field private mLoadingDrawables:[Ljava/lang/String;

.field private mWaveDrawables:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 29
    const-string/jumbo v0, "MicrophoneView"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->TAG:Ljava/lang/String;

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->DELAY_TIME:I

    .line 40
    const/16 v0, 0x2710

    iput v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->MAX_COUNT:I

    .line 83
    new-instance v0, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;-><init>(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mInitAnimationRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;-><init>(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mLoadingAnimationRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/iflytek/viafly/ui/view/MicrophoneView$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView$3;-><init>(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mHandler:Landroid/os/Handler;

    .line 180
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->SEND_IMAGE:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string/jumbo v0, "MicrophoneView"

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->TAG:Ljava/lang/String;

    .line 39
    const/16 v0, 0x50

    iput v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->DELAY_TIME:I

    .line 40
    const/16 v0, 0x2710

    iput v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->MAX_COUNT:I

    .line 83
    new-instance v0, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView$1;-><init>(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mInitAnimationRunnable:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView$2;-><init>(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mLoadingAnimationRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/iflytek/viafly/ui/view/MicrophoneView$3;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView$3;-><init>(Lcom/iflytek/viafly/ui/view/MicrophoneView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mHandler:Landroid/os/Handler;

    .line 180
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->SEND_IMAGE:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/ui/view/MicrophoneView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mInitDrawables:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/ui/view/MicrophoneView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mInited:Z

    return v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/ui/view/MicrophoneView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->sendImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/ui/view/MicrophoneView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;
    .param p1, "x1"    # J

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->sleep(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/ui/view/MicrophoneView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mLoadingDrawables:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/ui/view/MicrophoneView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mLoading:Z

    return v0
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/ui/view/MicrophoneView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ui/view/MicrophoneView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->getDrawableFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawableFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v2

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mDrawableMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 132
    .local v1, "drawableRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 133
    :cond_2
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, p1, v4}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Ljava/lang/ref/WeakReference;

    .end local v1    # "drawableRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 135
    .restart local v1    # "drawableRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    iget-object v3, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mDrawableMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private recyleDrawables()V
    .locals 4

    .prologue
    .line 222
    const-string/jumbo v2, "MicrophoneView"

    const-string/jumbo v3, "recyleDrawables"

    invoke-static {v2, v3}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mDrawableMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mDrawableMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mDrawableMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 228
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 230
    .local v0, "drawableRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/iflytek/base/skin/ThemeUtils;->recyleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 232
    .end local v0    # "drawableRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_2
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mDrawableMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method private sendImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const-string/jumbo v1, "MicrophoneView"

    const-string/jumbo v2, "sendImage | imageName is null"

    invoke-static {v1, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 188
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 189
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sleep(J)V
    .locals 3
    .param p1, "milliseconds"    # J

    .prologue
    .line 120
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "MicrophoneView"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startInitAnimation()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopLoadingDrawables()V

    .line 69
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopInitDrawables()V

    .line 70
    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mInited:Z

    .line 71
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 72
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mInitAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method private startLoadingAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 194
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mLoading:Z

    if-ne v0, v1, :cond_0

    .line 195
    const-string/jumbo v0, "MicrophoneView"

    const-string/jumbo v1, "startLoadingAnimation | mLoading == true"

    invoke-static {v0, v1}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mInited:Z

    .line 199
    iput-boolean v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mLoading:Z

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->setVisibility(I)V

    .line 201
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mLoadingAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public recyleResource()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Lcom/iflytek/base/skin/customView/XImageView;->recyleResource()V

    .line 218
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->recyleDrawables()V

    .line 219
    return-void
.end method

.method public setCustomerSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopInitDrawables()V

    .line 142
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopLoadingDrawables()V

    .line 143
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->sendImage(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setMicDrawable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "initDrawables"    # [Ljava/lang/String;
    .param p2, "waveDrawables"    # [Ljava/lang/String;
    .param p3, "loadingDrawables"    # [Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mInitDrawables:[Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mWaveDrawables:[Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mLoadingDrawables:[Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mDrawableMap:Ljava/util/Map;

    .line 61
    return-void
.end method

.method public showInitDrawables()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->startInitAnimation()V

    .line 65
    return-void
.end method

.method public showLoadingDrawables()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->startLoadingAnimation()V

    .line 206
    return-void
.end method

.method public stopInitDrawables()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mInited:Z

    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v0, "MicrophoneView"

    const-string/jumbo v1, "stopInitDrawables | mInited = false, stop init"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mInited:Z

    .line 79
    const-wide/16 v0, 0x50

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->sleep(J)V

    .line 81
    :cond_0
    return-void
.end method

.method public stopLoadingDrawables()V
    .locals 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mLoading:Z

    if-eqz v0, :cond_0

    .line 210
    const-string/jumbo v0, "MicrophoneView"

    const-string/jumbo v1, "stopLoadingDrawables | mLoading == true, stop"

    invoke-static {v0, v1}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mLoading:Z

    .line 212
    const-wide/16 v0, 0x50

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->sleep(J)V

    .line 214
    :cond_0
    return-void
.end method

.method public updateVolume(I)V
    .locals 5
    .param p1, "volume"    # I

    .prologue
    .line 167
    const-string/jumbo v2, "MicrophoneView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVolume | volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopInitDrawables()V

    .line 169
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->stopLoadingDrawables()V

    .line 170
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mWaveDrawables:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mWaveDrawables:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mWaveDrawables:[Ljava/lang/String;

    array-length v2, v2

    rem-int v0, p1, v2

    .line 175
    .local v0, "idx":I
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/MicrophoneView;->mWaveDrawables:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 177
    .local v1, "imageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/ui/view/MicrophoneView;->sendImage(Ljava/lang/String;)V

    goto :goto_0
.end method
