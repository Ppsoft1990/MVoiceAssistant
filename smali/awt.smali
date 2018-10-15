.class public Lawt;
.super Ljava/lang/Object;
.source "VirtualAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawt$a;
    }
.end annotation


# static fields
.field private static a:Lawt;


# instance fields
.field private b:Lawt$a;

.field private c:I

.field private d:J

.field private e:Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

.field private f:I

.field private g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

.field private h:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x5f

    iput v0, p0, Lawt;->c:I

    .line 23
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lawt;->d:J

    .line 107
    new-instance v0, Lawt$1;

    invoke-direct {v0, p0}, Lawt$1;-><init>(Lawt;)V

    iput-object v0, p0, Lawt;->h:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic a(Lawt;I)I
    .locals 0
    .param p0, "x0"    # Lawt;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lawt;->f:I

    return p1
.end method

.method public static a()Lawt;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lawt;->a:Lawt;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lawt;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lawt;->a:Lawt;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lawt;

    invoke-direct {v0}, Lawt;-><init>()V

    sput-object v0, Lawt;->a:Lawt;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lawt;->a:Lawt;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lawt;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .locals 0
    .param p0, "x0"    # Lawt;
    .param p1, "x1"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 14
    iput-object p1, p0, Lawt;->g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    return-object p1
.end method

.method static synthetic a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;
    .locals 1
    .param p0, "x0"    # Lawt;

    .prologue
    .line 14
    iget-object v0, p0, Lawt;->e:Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    return-object v0
.end method

.method static synthetic b(Lawt;)I
    .locals 1
    .param p0, "x0"    # Lawt;

    .prologue
    .line 14
    iget v0, p0, Lawt;->f:I

    return v0
.end method

.method static synthetic c(Lawt;)I
    .locals 1
    .param p0, "x0"    # Lawt;

    .prologue
    .line 14
    iget v0, p0, Lawt;->c:I

    return v0
.end method

.method static synthetic d(Lawt;)Lawt$a;
    .locals 1
    .param p0, "x0"    # Lawt;

    .prologue
    .line 14
    iget-object v0, p0, Lawt;->b:Lawt$a;

    return-object v0
.end method

.method static synthetic e(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .locals 1
    .param p0, "x0"    # Lawt;

    .prologue
    .line 14
    iget-object v0, p0, Lawt;->g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    return-object v0
.end method

.method static synthetic f(Lawt;)J
    .locals 2
    .param p0, "x0"    # Lawt;

    .prologue
    .line 14
    iget-wide v0, p0, Lawt;->d:J

    return-wide v0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 94
    const-string/jumbo v0, "VirtualAnimationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "excuteRemainingAnimation() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lawt;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lawt;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    :cond_0
    return-void
.end method

.method public a(Lawt$a;)V
    .locals 0
    .param p1, "listener"    # Lawt$a;

    .prologue
    .line 43
    iput-object p1, p0, Lawt;->b:Lawt$a;

    .line 44
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;
    .param p2, "errorCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 79
    if-nez p1, :cond_1

    .line 80
    const-string/jumbo v0, "VirtualAnimationHelper"

    const-string/jumbo v1, "excuteBeginAnimation() param is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iput-object p1, p0, Lawt;->g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 84
    iget-object v0, p0, Lawt;->b:Lawt$a;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lawt;->b:Lawt$a;

    iget-object v1, p0, Lawt;->g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-interface {v0, v1, p2}, Lawt$a;->b(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V

    .line 87
    :cond_2
    iput v2, p0, Lawt;->f:I

    .line 88
    iget-object v0, p0, Lawt;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lawt;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;)V
    .locals 0
    .param p1, "view"    # Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    .prologue
    .line 46
    iput-object p1, p0, Lawt;->e:Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    .line 47
    return-void
.end method

.method public a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Z
    .locals 3
    .param p1, "data"    # Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .prologue
    .line 73
    const-string/jumbo v0, "VirtualAnimationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAnimationRunning() mDATA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lawt;->g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string/jumbo v0, "VirtualAnimationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAnimationRunning() data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lawt;->g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawt;->g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 101
    const-string/jumbo v0, "VirtualAnimationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearRemainingAnimation() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lawt;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lawt;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 68
    const-string/jumbo v0, "VirtualAnimationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAnimationRunning() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lawt;->g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lawt;->g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lawt;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lawt;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 217
    :cond_0
    iput-object v1, p0, Lawt;->g:Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    .line 218
    return-void
.end method
