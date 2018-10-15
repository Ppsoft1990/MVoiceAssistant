.class Lou$1;
.super Ljava/lang/Object;
.source "PermissionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lou;->a(Lol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lol;

.field final synthetic b:Lou;


# direct methods
.method constructor <init>(Lou;Lol;)V
    .locals 0
    .param p1, "this$0"    # Lou;

    .prologue
    .line 113
    iput-object p1, p0, Lou$1;->b:Lou;

    iput-object p2, p0, Lou$1;->a:Lol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lou$1;->b:Lou;

    invoke-static {v0}, Lou;->a(Lou;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lou$1;->b:Lou;

    invoke-static {v0}, Lou;->b(Lou;)Lor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lou$1;->b:Lou;

    invoke-static {v0}, Lou;->b(Lou;)Lor;

    move-result-object v0

    invoke-virtual {v0}, Lor;->a()V

    .line 120
    iget-object v0, p0, Lou$1;->b:Lou;

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, p0, Lou$1;->a:Lol;

    invoke-static {v0, v2, v3, v4}, Lou;->a(Lou;IILjava/lang/Object;)V

    .line 122
    :cond_0
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
