.class public Lzs;
.super Ljava/lang/Object;
.source "BroadcastFloatWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzs$a;
    }
.end annotation


# static fields
.field private static h:Lzs;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/viafly/call/BroadcastFloatView;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:Landroid/view/WindowManager;

.field private e:J

.field private f:Z

.field private g:Lzs$a;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzs;->a:Landroid/content/Context;

    .line 45
    new-instance v0, Lzs$a;

    invoke-direct {v0, p0}, Lzs$a;-><init>(Lzs;)V

    iput-object v0, p0, Lzs;->g:Lzs$a;

    .line 46
    iget-object v0, p0, Lzs;->g:Lzs$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lzs$a;->sendEmptyMessage(I)Z

    .line 47
    iget-object v0, p0, Lzs;->a:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lzs;->d:Landroid/view/WindowManager;

    .line 49
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lzs;->c:Landroid/view/WindowManager$LayoutParams;

    .line 50
    iget-object v0, p0, Lzs;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 51
    iget-object v0, p0, Lzs;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 52
    iget-object v0, p0, Lzs;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 53
    iget-object v0, p0, Lzs;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 54
    iget-object v0, p0, Lzs;->c:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    iget-object v0, p0, Lzs;->c:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 56
    iget-object v0, p0, Lzs;->c:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lzs;->a:Landroid/content/Context;

    invoke-static {v1}, Lhl;->d(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 57
    iget-object v0, p0, Lzs;->c:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lzs;->a:Landroid/content/Context;

    invoke-static {v1}, Lhl;->e(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 59
    const v0, 0x7f02000e

    const v1, 0x7f02000b

    invoke-virtual {p0, v0, v1}, Lzs;->a(II)Lzs;

    .line 60
    return-void
.end method

.method static synthetic a(Lzs;)Lcom/iflytek/viafly/call/BroadcastFloatView;
    .locals 1
    .param p0, "x0"    # Lzs;

    .prologue
    .line 24
    iget-object v0, p0, Lzs;->b:Lcom/iflytek/viafly/call/BroadcastFloatView;

    return-object v0
.end method

.method static synthetic a(Lzs;Lcom/iflytek/viafly/call/BroadcastFloatView;)Lcom/iflytek/viafly/call/BroadcastFloatView;
    .locals 0
    .param p0, "x0"    # Lzs;
    .param p1, "x1"    # Lcom/iflytek/viafly/call/BroadcastFloatView;

    .prologue
    .line 24
    iput-object p1, p0, Lzs;->b:Lcom/iflytek/viafly/call/BroadcastFloatView;

    return-object p1
.end method

.method public static a()Lzs;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lzs;->h:Lzs;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lzs;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lzs;->h:Lzs;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lzs;

    invoke-direct {v0}, Lzs;-><init>()V

    sput-object v0, Lzs;->h:Lzs;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lzs;->h:Lzs;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lzs;Z)Z
    .locals 0
    .param p0, "x0"    # Lzs;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lzs;->f:Z

    return p1
.end method

.method static synthetic b(Lzs;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lzs;

    .prologue
    .line 24
    iget-object v0, p0, Lzs;->c:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic c(Lzs;)Z
    .locals 1
    .param p0, "x0"    # Lzs;

    .prologue
    .line 24
    iget-boolean v0, p0, Lzs;->f:Z

    return v0
.end method

.method static synthetic d(Lzs;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lzs;

    .prologue
    .line 24
    iget-object v0, p0, Lzs;->d:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic e(Lzs;)J
    .locals 2
    .param p0, "x0"    # Lzs;

    .prologue
    .line 24
    iget-wide v0, p0, Lzs;->e:J

    return-wide v0
.end method

.method static synthetic f(Lzs;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lzs;

    .prologue
    .line 24
    iget-object v0, p0, Lzs;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(II)Lzs;
    .locals 3
    .param p1, "normalImgId"    # I
    .param p2, "pressImgId"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lzs;->g:Lzs$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lzs$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 78
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 79
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 80
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 81
    return-object p0
.end method

.method public a(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 108
    iget-object v0, p0, Lzs;->g:Lzs$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lzs$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    iput-wide p1, p0, Lzs;->e:J

    .line 110
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v2, p0, Lzs;->g:Lzs$a;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lzs$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 117
    iput-wide p1, p0, Lzs;->e:J

    .line 118
    const-string/jumbo v2, "call"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-wide v0, p0, Lzs;->e:J

    .line 120
    .local v0, "hideId":J
    iget-object v2, p0, Lzs;->g:Lzs$a;

    new-instance v3, Lzs$1;

    invoke-direct {v3, p0, v0, v1}, Lzs$1;-><init>(Lzs;J)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lzs$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    .end local v0    # "hideId":J
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "onFloatWindowClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 99
    iget-object v1, p0, Lzs;->g:Lzs$a;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lzs$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    return-void
.end method

.method public b(II)Lzs;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 88
    iget-object v1, p0, Lzs;->g:Lzs$a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lzs$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 89
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 90
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 91
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 92
    return-object p0
.end method

.method public b(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 133
    iget-object v1, p0, Lzs;->g:Lzs$a;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lzs$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 136
    return-void
.end method
