.class Lazy$1;
.super Ljava/lang/Thread;
.source "UidPersistentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazy;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lazy;


# direct methods
.method constructor <init>(Lazy;)V
    .locals 0
    .param p1, "this$0"    # Lazy;

    .prologue
    .line 132
    iput-object p1, p0, Lazy$1;->a:Lazy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lazy$1;->a:Lazy;

    invoke-static {v1}, Lazy;->a(Lazy;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "uid":Ljava/lang/String;
    invoke-static {}, Lazy;->b()[B

    move-result-object v2

    monitor-enter v2

    .line 138
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lazy$1;->a:Lazy;

    invoke-static {v1, v0}, Lazy;->a(Lazy;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lazy$1;->a:Lazy;

    invoke-virtual {v1, v0}, Lazy;->a(Ljava/lang/String;)V

    .line 143
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v1, p0, Lazy$1;->a:Lazy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lazy;->a(Lazy;Z)Z

    .line 146
    return-void

    .line 143
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
