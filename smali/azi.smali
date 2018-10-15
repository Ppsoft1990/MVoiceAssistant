.class public Lazi;
.super Ljava/lang/Object;
.source "HomeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazi$a;,
        Lazi$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/IntentFilter;

.field private c:Lazi$b;

.field private d:Lazi$a;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lazi;->e:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lazi;->a:Landroid/content/Context;

    .line 38
    new-instance v0, Lazi$a;

    invoke-direct {v0, p0}, Lazi$a;-><init>(Lazi;)V

    iput-object v0, p0, Lazi;->d:Lazi$a;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lazi;->b:Landroid/content/IntentFilter;

    .line 40
    return-void
.end method

.method static synthetic a(Lazi;)Lazi$b;
    .locals 1
    .param p0, "x0"    # Lazi;

    .prologue
    .line 19
    iget-object v0, p0, Lazi;->c:Lazi$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 55
    iget-object v1, p0, Lazi;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v2, p0, Lazi;->a:Landroid/content/Context;

    iget-object v3, p0, Lazi;->d:Lazi$a;

    iget-object v4, p0, Lazi;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3, v4}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lazi$b;)V
    .locals 0
    .param p1, "listener"    # Lazi$b;

    .prologue
    .line 48
    iput-object p1, p0, Lazi;->c:Lazi$b;

    .line 49
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lazi;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    invoke-static {}, Lauf;->a()Lauf;

    move-result-object v0

    iget-object v2, p0, Lazi;->a:Landroid/content/Context;

    iget-object v3, p0, Lazi;->d:Lazi$a;

    invoke-virtual {v0, v2, v3}, Lauf;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 66
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
