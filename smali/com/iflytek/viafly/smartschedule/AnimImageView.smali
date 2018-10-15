.class public Lcom/iflytek/viafly/smartschedule/AnimImageView;
.super Lcom/iflytek/base/skin/customView/XImageView;
.source "AnimImageView.java"


# instance fields
.field private final DELAY_TIME:J

.field private final DURATION:J

.field final SEND_IMAGE:I

.field private final TAG:Ljava/lang/String;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mImageName:Ljava/lang/String;

.field private mImageNames:[Ljava/lang/String;

.field private volatile mLoading:Z

.field private mRepeatTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 27
    const-string/jumbo v0, "AnimImageView"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->TAG:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->DELAY_TIME:J

    .line 34
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->DURATION:J

    .line 81
    new-instance v0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;-><init>(Lcom/iflytek/viafly/smartschedule/AnimImageView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/iflytek/viafly/smartschedule/AnimImageView$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/AnimImageView$2;-><init>(Lcom/iflytek/viafly/smartschedule/AnimImageView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mHandler:Landroid/os/Handler;

    .line 142
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->SEND_IMAGE:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string/jumbo v0, "AnimImageView"

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->TAG:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->DELAY_TIME:J

    .line 34
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->DURATION:J

    .line 81
    new-instance v0, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/AnimImageView$1;-><init>(Lcom/iflytek/viafly/smartschedule/AnimImageView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/iflytek/viafly/smartschedule/AnimImageView$2;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smartschedule/AnimImageView$2;-><init>(Lcom/iflytek/viafly/smartschedule/AnimImageView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mHandler:Landroid/os/Handler;

    .line 142
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->SEND_IMAGE:I

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/smartschedule/AnimImageView;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/AnimImageView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mImageNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/smartschedule/AnimImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/AnimImageView;

    .prologue
    .line 25
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mRepeatTime:I

    return v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/smartschedule/AnimImageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/AnimImageView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mLoading:Z

    return v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/smartschedule/AnimImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/AnimImageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->sendImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/iflytek/viafly/smartschedule/AnimImageView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/AnimImageView;
    .param p1, "x1"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->sleep(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/iflytek/viafly/smartschedule/AnimImageView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/AnimImageView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mImageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/iflytek/viafly/smartschedule/AnimImageView;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/smartschedule/AnimImageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->getDrawableFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawableFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private sendImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string/jumbo v1, "AnimImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendImage | imageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const-string/jumbo v1, "AnimImageView"

    const-string/jumbo v2, "sendImage | imageName is null"

    invoke-static {v1, v2}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 153
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sleep(J)V
    .locals 3
    .param p1, "milliseconds"    # J

    .prologue
    .line 109
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "AnimImageView"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageName"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    const-string/jumbo v0, "AnimImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImage | src = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->stopAnimation()V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string/jumbo v0, "AnimImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImage | src = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->stopAnimation()V

    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mImageName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mImageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->sendImage(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setImages([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "imageNames"    # [Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "repeatTime"    # I

    .prologue
    .line 61
    const-string/jumbo v0, "AnimImageView"

    const-string/jumbo v1, "setImages"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mImageNames:[Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mImageName:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mRepeatTime:I

    .line 66
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->stopAnimation()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mLoading:Z

    .line 68
    invoke-virtual {p0}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->startAnimation()V

    .line 69
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mLoading:Z

    if-eqz v0, :cond_0

    .line 159
    const-string/jumbo v0, "AnimImageView"

    const-string/jumbo v1, "startLoadingAnimation | mLoading == true"

    invoke-static {v0, v1}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mLoading:Z

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->setVisibility(I)V

    .line 164
    sget-object v0, Lazx;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mLoading:Z

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v0, "AnimImageView"

    const-string/jumbo v1, "stopInitDrawables | mLoading = true, stop"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/smartschedule/AnimImageView;->mLoading:Z

    .line 75
    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/iflytek/viafly/smartschedule/AnimImageView;->sleep(J)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string/jumbo v0, "AnimImageView"

    const-string/jumbo v1, "stopInitDrawables | mLoading = false, return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
