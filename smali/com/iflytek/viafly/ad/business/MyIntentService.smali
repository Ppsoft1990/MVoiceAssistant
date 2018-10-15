.class public abstract Lcom/iflytek/viafly/ad/business/MyIntentService;
.super Landroid/app/Service;
.source "MyIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ad/business/MyIntentService$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Landroid/os/Looper;

.field private volatile c:Lcom/iflytek/viafly/ad/business/MyIntentService$a;

.field private d:Ljava/lang/String;

.field private volatile e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    const-string/jumbo v0, "MyIntentService"

    iput-object v0, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->a:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/ad/business/MyIntentService;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ad/business/MyIntentService;

    .prologue
    .line 15
    iget v0, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->e:I

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/ad/business/MyIntentService;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/ad/business/MyIntentService;

    .prologue
    .line 15
    iget v0, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->e:I

    return v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->e:I

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IntentService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->b:Landroid/os/Looper;

    .line 58
    new-instance v1, Lcom/iflytek/viafly/ad/business/MyIntentService$a;

    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->b:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/iflytek/viafly/ad/business/MyIntentService$a;-><init>(Lcom/iflytek/viafly/ad/business/MyIntentService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->c:Lcom/iflytek/viafly/ad/business/MyIntentService$a;

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 95
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 63
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->c:Lcom/iflytek/viafly/ad/business/MyIntentService$a;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ad/business/MyIntentService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 64
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 65
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget v2, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->e:I

    .line 67
    const-string/jumbo v2, "reporttime"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, "delayTime":I
    if-lez v0, :cond_0

    .line 69
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->c:Lcom/iflytek/viafly/ad/business/MyIntentService$a;

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Lcom/iflytek/viafly/ad/business/MyIntentService$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/ad/business/MyIntentService;->c:Lcom/iflytek/viafly/ad/business/MyIntentService$a;

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/ad/business/MyIntentService$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0, p1, p3}, Lcom/iflytek/viafly/ad/business/MyIntentService;->onStart(Landroid/content/Intent;I)V

    .line 89
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 86
    :cond_0
    const-string/jumbo v0, "MyIntentService"

    const-string/jumbo v1, "onStartCommand intent is null"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
