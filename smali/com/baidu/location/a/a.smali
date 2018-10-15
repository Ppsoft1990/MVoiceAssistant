.class public Lcom/baidu/location/a/a;
.super Landroid/app/Service;

# interfaces
.implements Lde;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a/a$a;
    }
.end annotation


# static fields
.field static a:Lcom/baidu/location/a/a$a;

.field private static f:J


# instance fields
.field b:Landroid/os/Messenger;

.field private c:Landroid/os/Looper;

.field private d:Landroid/os/HandlerThread;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/a;->a:Lcom/baidu/location/a/a$a;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/a/a;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/a;->b:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/a;->e:Z

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    const-string/jumbo v0, "baidu_location_service"

    const-string/jumbo v1, "baidu location service register ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, p1}, Len;->a(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    invoke-static {}, Let;->a()Let;

    move-result-object v0

    invoke-virtual {v0}, Let;->c()V

    invoke-static {}, Leo;->b()Leo;

    move-result-object v0

    invoke-virtual {v0}, Leo;->c()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/a/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method private b()V
    .locals 1

    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v0

    invoke-virtual {v0}, Lfy;->b()V

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v0

    invoke-virtual {v0}, Lfz;->b()V

    invoke-static {}, Ldj;->a()Ldj;

    invoke-static {}, Lfc;->b()Lfc;

    move-result-object v0

    invoke-virtual {v0}, Lfc;->c()V

    invoke-static {}, Lec;->a()Lec;

    move-result-object v0

    invoke-virtual {v0}, Lec;->b()V

    invoke-static {}, Lcom/baidu/location/e/e;->a()Lcom/baidu/location/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/e;->b()V

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, p1}, Len;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/a/a;->b()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/a/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/a;->b(Landroid/os/Message;)V

    return-void
.end method

.method private c()V
    .locals 1

    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v0

    invoke-virtual {v0}, Lfy;->c()V

    invoke-static {}, Lfc;->b()Lfc;

    move-result-object v0

    invoke-virtual {v0}, Lfc;->d()V

    invoke-static {}, Lff;->e()V

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0}, Len;->b()V

    invoke-static {}, Leu;->a()Leu;

    move-result-object v0

    invoke-virtual {v0}, Leu;->b()V

    iget-boolean v0, p0, Lcom/baidu/location/a/a;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method private c(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, p1}, Len;->c(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/a/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/a;->c(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    const-wide v0, 0x4018851ec0000000L    # 6.130000114440918

    return-wide v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/location/a/a;->f:J

    invoke-static {}, Lfe;->a()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/a;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/baidu/location/a/a;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/a;->c:Landroid/os/Looper;

    new-instance v0, Lcom/baidu/location/a/a$a;

    iget-object v1, p0, Lcom/baidu/location/a/a;->c:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/a/a$a;-><init>(Lcom/baidu/location/a/a;Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/location/a/a;->a:Lcom/baidu/location/a/a$a;

    new-instance v0, Landroid/os/Messenger;

    sget-object v1, Lcom/baidu/location/a/a;->a:Lcom/baidu/location/a/a$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/location/a/a;->b:Landroid/os/Messenger;

    sget-object v0, Lcom/baidu/location/a/a;->a:Lcom/baidu/location/a/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a$a;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "baidu_location_service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "baidu location service start1 ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldj;->f:Ljava/lang/String;

    const-string/jumbo v1, "sign"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ldj;->e:Ljava/lang/String;

    const-string/jumbo v1, "kill_process"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/a/a;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/a;->b:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v0

    invoke-virtual {v0}, Lfz;->c()V

    invoke-static {}, Lex;->a()Lex;

    move-result-object v0

    invoke-virtual {v0}, Lex;->c()V

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->n()V

    invoke-static {}, Let;->a()Let;

    move-result-object v0

    invoke-virtual {v0}, Let;->b()V

    invoke-static {}, Lfs;->a()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->e()V

    invoke-static {}, Lcom/baidu/location/e/e;->a()Lcom/baidu/location/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/e;->c()V

    sget-object v0, Lcom/baidu/location/a/a;->a:Lcom/baidu/location/a/a$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a$a;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "baidu_location_service"

    const-string/jumbo v1, "baidu location service stop ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
